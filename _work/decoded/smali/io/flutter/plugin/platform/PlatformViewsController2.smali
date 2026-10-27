.class public Lio/flutter/plugin/platform/PlatformViewsController2;
.super Ljava/lang/Object;
.source "PlatformViewsController2.java"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatformViewsController2"


# instance fields
.field private final accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

.field private final activeTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

.field final channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

.field private context:Landroid/content/Context;

.field private flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

.field private flutterView:Lio/flutter/embedding/android/FlutterView;

.field private final motionEventTracker:Lio/flutter/embedding/android/MotionEventTracker;

.field private overlaySurfaceControl:Landroid/view/SurfaceControl;

.field private overlayerSurface:Landroid/view/Surface;

.field private final pendingTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl$Transaction;",
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

.field private platformViewsChannel:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;

.field private registry:Lio/flutter/plugin/platform/PlatformViewRegistryImpl;

.field private textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

.field private final viewsWithPendingSurfaceCallback:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 79
    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->overlayerSurface:Landroid/view/Surface;

    .line 80
    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->overlaySurfaceControl:Landroid/view/SurfaceControl;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->viewsWithPendingSurfaceCallback:Ljava/util/HashSet;

    .line 761
    new-instance v0, Lio/flutter/plugin/platform/PlatformViewsController2$2;

    invoke-direct {v0, p0}, Lio/flutter/plugin/platform/PlatformViewsController2$2;-><init>(Lio/flutter/plugin/platform/PlatformViewsController2;)V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    .line 85
    new-instance v0, Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    invoke-direct {v0}, Lio/flutter/plugin/platform/AccessibilityEventsDelegate;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViews:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViewParent:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->pendingTransactions:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->activeTransactions:Ljava/util/ArrayList;

    .line 90
    invoke-static {}, Lio/flutter/embedding/android/MotionEventTracker;->getInstance()Lio/flutter/embedding/android/MotionEventTracker;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->motionEventTracker:Lio/flutter/embedding/android/MotionEventTracker;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lio/flutter/plugin/platform/PlatformViewsController2;)Lio/flutter/embedding/engine/FlutterJNI;
    .locals 1
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 59
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    return-object v0
.end method

.method static synthetic access$100(Lio/flutter/plugin/platform/PlatformViewsController2;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 59
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->viewsWithPendingSurfaceCallback:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lio/flutter/plugin/platform/PlatformViewsController2;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 59
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViews:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lio/flutter/plugin/platform/PlatformViewsController2;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 59
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViewParent:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lio/flutter/plugin/platform/PlatformViewsController2;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 59
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->context:Landroid/content/Context;

    return-object v0
.end method

.method private createSurfaceClipCallback(Landroid/view/SurfaceView;FLandroid/graphics/Rect;I)Landroid/view/SurfaceHolder$Callback;
    .locals 6
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;
    .param p2, "opacity"    # F
    .param p3, "screenRect"    # Landroid/graphics/Rect;
    .param p4, "viewId"    # I

    .line 622
    new-instance v0, Lio/flutter/plugin/platform/PlatformViewsController2$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "surfaceView":Landroid/view/SurfaceView;
    .end local p2    # "opacity":F
    .end local p3    # "screenRect":Landroid/graphics/Rect;
    .end local p4    # "viewId":I
    .local v2, "surfaceView":Landroid/view/SurfaceView;
    .local v3, "opacity":F
    .local v4, "screenRect":Landroid/graphics/Rect;
    .local v5, "viewId":I
    invoke-direct/range {v0 .. v5}, Lio/flutter/plugin/platform/PlatformViewsController2$1;-><init>(Lio/flutter/plugin/platform/PlatformViewsController2;Landroid/view/SurfaceView;FLandroid/graphics/Rect;I)V

    return-object v0
.end method

.method private disposeAllViews()V
    .locals 2

    .line 423
    nop

    :goto_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 424
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViews:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 426
    .local v0, "viewId":I
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    invoke-interface {v1, v0}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;->dispose(I)V

    .line 427
    .end local v0    # "viewId":I
    goto :goto_0

    .line 428
    :cond_0
    return-void
.end method

.method private getDisplayDensity()F
    .locals 1

    .line 407
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private lockInputConnection(Lio/flutter/plugin/platform/VirtualDisplayController;)V
    .locals 1
    .param p1, "controller"    # Lio/flutter/plugin/platform/VirtualDisplayController;

    .line 342
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    if-nez v0, :cond_0

    .line 343
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->lockPlatformViewInputConnection()V

    .line 346
    invoke-virtual {p1}, Lio/flutter/plugin/platform/VirtualDisplayController;->onInputConnectionLocked()V

    .line 347
    return-void
.end method

.method private maybeApplyClipToSurfaceView(Landroid/view/SurfaceView;IIIILio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;I)V
    .locals 8
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "mutatorsStack"    # Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;
    .param p7, "viewId"    # I

    .line 553
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float v2, p3

    add-int v3, p2, p4

    int-to-float v3, v3

    add-int v4, p3, p5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 554
    .local v0, "screenRectF":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 555
    .local v1, "screenRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 557
    invoke-virtual {p6}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->getFinalClippingPaths()Ljava/util/List;

    move-result-object v2

    .line 559
    .local v2, "clippingPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 560
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 561
    .local v3, "pathBounds":Landroid/graphics/RectF;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    .line 563
    .local v5, "path":Landroid/graphics/Path;
    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 566
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 567
    .local v6, "pathRectInt":Landroid/graphics/Rect;
    invoke-virtual {v3, v6}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 572
    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v7

    .line 573
    .local v7, "anyIntersection":Z
    if-nez v7, :cond_0

    .line 574
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 575
    goto :goto_1

    .line 577
    .end local v5    # "path":Landroid/graphics/Path;
    .end local v6    # "pathRectInt":Landroid/graphics/Rect;
    .end local v7    # "anyIntersection":Z
    :cond_0
    goto :goto_0

    .line 583
    .end local v3    # "pathBounds":Landroid/graphics/RectF;
    :cond_1
    :goto_1
    neg-int v3, p2

    neg-int v4, p3

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 584
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gez v3, :cond_3

    .line 585
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 592
    :cond_3
    invoke-virtual {p6}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->getFinalOpacity()F

    move-result v3

    .line 593
    .local v3, "opacity":F
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    .line 594
    .local v4, "sc":Landroid/view/SurfaceControl;
    if-nez v4, :cond_5

    .line 595
    iget-object v5, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->viewsWithPendingSurfaceCallback:Ljava/util/HashSet;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 596
    return-void

    .line 598
    :cond_4
    iget-object v5, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->viewsWithPendingSurfaceCallback:Ljava/util/HashSet;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 599
    nop

    .line 600
    invoke-direct {p0, p1, v3, v1, p7}, Lio/flutter/plugin/platform/PlatformViewsController2;->createSurfaceClipCallback(Landroid/view/SurfaceView;FLandroid/graphics/Rect;I)Landroid/view/SurfaceHolder$Callback;

    move-result-object v5

    .line 601
    .local v5, "cb":Landroid/view/SurfaceHolder$Callback;
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 602
    return-void

    .line 604
    .end local v5    # "cb":Landroid/view/SurfaceHolder$Callback;
    :cond_5
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-nez v5, :cond_6

    .line 605
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping applying clip to SurfaceView: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 608
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " because it has an invalid SurfaceControl."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 605
    const-string v6, "PlatformViewsController2"

    invoke-static {v6, v5}, Lio/flutter/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    return-void

    .line 612
    :cond_6
    nop

    .line 613
    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformViewsController2;->createTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    .line 614
    .local v5, "tx":Landroid/view/SurfaceControl$Transaction;
    return-void
.end method

.method private maybeInvokeOnFlutterViewAttached(Lio/flutter/plugin/platform/PlatformView;)V
    .locals 2
    .param p1, "view"    # Lio/flutter/plugin/platform/PlatformView;

    .line 279
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->flutterView:Lio/flutter/embedding/android/FlutterView;

    if-nez v0, :cond_0

    .line 280
    const-string v0, "PlatformViewsController2"

    const-string v1, "null flutterView"

    invoke-static {v0, v1}, Lio/flutter/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-interface {p1, v0}, Lio/flutter/plugin/platform/PlatformView;->onFlutterViewAttached(Landroid/view/View;)V

    .line 285
    return-void
.end method

.method private static parsePointerCoords(Ljava/lang/Object;F)Landroid/view/MotionEvent$PointerCoords;
    .locals 6
    .param p0, "rawCoords"    # Ljava/lang/Object;
    .param p1, "density"    # F

    .line 392
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 393
    .local v0, "coordsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 394
    .local v1, "coords":Landroid/view/MotionEvent$PointerCoords;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 395
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 396
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 397
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

    .line 398
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

    .line 399
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

    .line 400
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

    .line 401
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

    .line 402
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

    .line 403
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

    .line 382
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 383
    .local v0, "rawCoords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v1, "pointerCoords":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent$PointerCoords;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 385
    .local v3, "o":Ljava/lang/Object;
    invoke-static {v3, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->parsePointerCoords(Ljava/lang/Object;F)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 387
    :cond_0
    return-object v1
.end method

.method private static parsePointerProperties(Ljava/lang/Object;)Landroid/view/MotionEvent$PointerProperties;
    .locals 3
    .param p0, "rawProperties"    # Ljava/lang/Object;

    .line 373
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 374
    .local v0, "propertiesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 375
    .local v1, "properties":Landroid/view/MotionEvent$PointerProperties;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 376
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 377
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

    .line 363
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 364
    .local v0, "rawProperties":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v1, "pointerProperties":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent$PointerProperties;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 366
    .local v3, "o":Ljava/lang/Object;
    invoke-static {v3}, Lio/flutter/plugin/platform/PlatformViewsController2;->parsePointerProperties(Ljava/lang/Object;)Landroid/view/MotionEvent$PointerProperties;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 368
    :cond_0
    return-object v1
.end method

.method private toLogicalPixels(D)I
    .locals 1
    .param p1, "physicalPixels"    # D

    .line 419
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformViewsController2;->getDisplayDensity()F

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->toLogicalPixels(DF)I

    move-result v0

    return v0
.end method

.method private toLogicalPixels(DF)I
    .locals 2
    .param p1, "physicalPixels"    # D
    .param p3, "displayDensity"    # F

    .line 415
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

    .line 411
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformViewsController2;->getDisplayDensity()F

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

    .line 141
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 142
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 146
    .local v1, "xOffset":F
    aget-object v0, p1, v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    .line 148
    .local v0, "yOffset":F
    invoke-virtual {p0, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 149
    return-void
.end method

.method private unlockInputConnection(Lio/flutter/plugin/platform/VirtualDisplayController;)V
    .locals 1
    .param p1, "controller"    # Lio/flutter/plugin/platform/VirtualDisplayController;

    .line 350
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    if-nez v0, :cond_0

    .line 351
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->unlockPlatformViewInputConnection()V

    .line 354
    invoke-virtual {p1}, Lio/flutter/plugin/platform/VirtualDisplayController;->onInputConnectionUnlocked()V

    .line 355
    return-void
.end method

.method private static validateDirection(I)Z
    .locals 1
    .param p0, "direction"    # I

    .line 358
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
.method public applyTransactions()V
    .locals 3

    .line 697
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 698
    .local v0, "tx":Landroid/view/SurfaceControl$Transaction;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->pendingTransactions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 699
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->pendingTransactions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 698
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 701
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 702
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->pendingTransactions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 703
    return-void
.end method

.method public attach(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dartExecutor"    # Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 204
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 209
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->context:Landroid/content/Context;

    .line 212
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;

    invoke-direct {v0, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViewsChannel:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;

    .line 213
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViewsChannel:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;

    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->setPlatformViewsHandler(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;)V

    .line 214
    return-void

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "A PlatformViewsController can only be attached to a single output target.\nattach was called while the PlatformViewsController was already attached."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public attachAccessibilityBridge(Lio/flutter/view/AccessibilityBridge;)V
    .locals 1
    .param p1, "accessibilityBridge"    # Lio/flutter/view/AccessibilityBridge;

    .line 289
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/AccessibilityEventsDelegate;->setAccessibilityBridge(Lio/flutter/view/AccessibilityBridge;)V

    .line 290
    return-void
.end method

.method public attachTextInputPlugin(Lio/flutter/plugin/editing/TextInputPlugin;)V
    .locals 0
    .param p1, "textInputPlugin"    # Lio/flutter/plugin/editing/TextInputPlugin;

    .line 307
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 308
    return-void
.end method

.method public attachToFlutterRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V
    .locals 2
    .param p1, "flutterRenderer"    # Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 495
    new-instance v0, Lio/flutter/embedding/android/AndroidTouchProcessor;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lio/flutter/embedding/android/AndroidTouchProcessor;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;Z)V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

    .line 496
    return-void
.end method

.method public attachToView(Lio/flutter/embedding/android/FlutterView;)V
    .locals 3
    .param p1, "newFlutterView"    # Lio/flutter/embedding/android/FlutterView;

    .line 241
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->flutterView:Lio/flutter/embedding/android/FlutterView;

    .line 243
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViewParent:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 244
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViewParent:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;

    .line 245
    .local v1, "view":Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v2, v1}, Lio/flutter/embedding/android/FlutterView;->addView(Landroid/view/View;)V

    .line 243
    .end local v1    # "view":Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "index":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_1
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 249
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/platform/PlatformView;

    .line 250
    .local v1, "view":Lio/flutter/plugin/platform/PlatformView;
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-interface {v1, v2}, Lio/flutter/plugin/platform/PlatformView;->onFlutterViewAttached(Landroid/view/View;)V

    .line 248
    .end local v1    # "view":Lio/flutter/plugin/platform/PlatformView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    .end local v0    # "index":I
    :cond_1
    return-void
.end method

.method public createFlutterPlatformView(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)Lio/flutter/plugin/platform/PlatformView;
    .locals 6
    .param p1, "request"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;

    .line 108
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->registry:Lio/flutter/plugin/platform/PlatformViewRegistryImpl;

    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/PlatformViewRegistryImpl;->getFactory(Ljava/lang/String;)Lio/flutter/plugin/platform/PlatformViewFactory;

    move-result-object v0

    .line 109
    .local v0, "viewFactory":Lio/flutter/plugin/platform/PlatformViewFactory;
    if-eqz v0, :cond_2

    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "createParams":Ljava/lang/Object;
    iget-object v2, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->params:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewFactory;->getCreateArgsCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v2

    iget-object v3, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->params:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3}, Lio/flutter/plugin/common/MessageCodec;->decodeMessage(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v1

    .line 118
    :cond_0
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->context:Landroid/content/Context;

    iget v3, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewId:I

    invoke-virtual {v0, v2, v3, v1}, Lio/flutter/plugin/platform/PlatformViewFactory;->create(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/PlatformView;

    move-result-object v2

    .line 121
    .local v2, "platformView":Lio/flutter/plugin/platform/PlatformView;
    invoke-interface {v2}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v3

    .line 122
    .local v3, "embeddedView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 126
    iget v4, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->direction:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutDirection(I)V

    .line 127
    iget-object v4, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViews:Landroid/util/SparseArray;

    iget v5, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewId:I

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    invoke-direct {p0, v2}, Lio/flutter/plugin/platform/PlatformViewsController2;->maybeInvokeOnFlutterViewAttached(Lio/flutter/plugin/platform/PlatformView;)V

    .line 129
    return-object v2

    .line 123
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "PlatformView#getView() returned null, but an Android view reference was expected."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 110
    .end local v1    # "createParams":Ljava/lang/Object;
    .end local v2    # "platformView":Lio/flutter/plugin/platform/PlatformView;
    .end local v3    # "embeddedView":Landroid/view/View;
    :cond_2
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

.method public createOverlaySurface()Lio/flutter/embedding/engine/FlutterOverlaySurface;
    .locals 5

    .line 707
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->overlayerSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 708
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 709
    .local v0, "surfaceControlBuilder":Landroid/view/SurfaceControl$Builder;
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v2}, Lio/flutter/embedding/android/FlutterView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v3}, Lio/flutter/embedding/android/FlutterView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    .line 710
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    .line 711
    const-string v2, "Flutter Overlay Surface"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 712
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 713
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 714
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 715
    .local v2, "surfaceControl":Landroid/view/SurfaceControl;
    iget-object v3, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->flutterView:Lio/flutter/embedding/android/FlutterView;

    .line 716
    invoke-virtual {v3}, Lio/flutter/embedding/android/FlutterView;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/AttachedSurfaceControl;->buildReparentTransaction(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    .line 717
    .local v3, "tx":Landroid/view/SurfaceControl$Transaction;
    const/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 718
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 719
    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, v2}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceControl;)V

    iput-object v4, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->overlayerSurface:Landroid/view/Surface;

    .line 720
    iput-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->overlaySurfaceControl:Landroid/view/SurfaceControl;

    .line 723
    .end local v0    # "surfaceControlBuilder":Landroid/view/SurfaceControl$Builder;
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v3    # "tx":Landroid/view/SurfaceControl$Transaction;
    :cond_0
    new-instance v0, Lio/flutter/embedding/engine/FlutterOverlaySurface;

    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->overlayerSurface:Landroid/view/Surface;

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/engine/FlutterOverlaySurface;-><init>(ILandroid/view/Surface;)V

    return-object v0
.end method

.method public createTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 2

    .line 689
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 690
    .local v0, "tx":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->pendingTransactions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    return-object v0
.end method

.method public destroyOverlaySurface()V
    .locals 1

    .line 727
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->overlayerSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->overlayerSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->overlayerSurface:Landroid/view/Surface;

    .line 730
    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->overlaySurfaceControl:Landroid/view/SurfaceControl;

    .line 732
    :cond_0
    return-void
.end method

.method public detach()V
    .locals 2

    .line 226
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViewsChannel:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViewsChannel:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->setPlatformViewsHandler(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;)V

    .line 229
    :cond_0
    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformViewsController2;->destroyOverlaySurface()V

    .line 230
    iput-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViewsChannel:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;

    .line 231
    iput-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->context:Landroid/content/Context;

    .line 232
    return-void
.end method

.method public detachAccessibilityBridge()V
    .locals 2

    .line 294
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/AccessibilityEventsDelegate;->setAccessibilityBridge(Lio/flutter/view/AccessibilityBridge;)V

    .line 295
    return-void
.end method

.method public detachFromView()V
    .locals 3

    .line 263
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViewParent:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 264
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViewParent:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;

    .line 265
    .local v1, "view":Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v2, v1}, Lio/flutter/embedding/android/FlutterView;->removeView(Landroid/view/View;)V

    .line 263
    .end local v1    # "view":Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "index":I
    :cond_0
    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformViewsController2;->destroyOverlaySurface()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->flutterView:Lio/flutter/embedding/android/FlutterView;

    .line 272
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_1
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 273
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/platform/PlatformView;

    .line 274
    .local v1, "view":Lio/flutter/plugin/platform/PlatformView;
    invoke-interface {v1}, Lio/flutter/plugin/platform/PlatformView;->onFlutterViewDetached()V

    .line 272
    .end local v1    # "view":Lio/flutter/plugin/platform/PlatformView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 276
    .end local v0    # "index":I
    :cond_1
    return-void
.end method

.method public detachTextInputPlugin()V
    .locals 1

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 313
    return-void
.end method

.method public disposePlatformView(I)V
    .locals 1
    .param p1, "viewId"    # I

    .line 437
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;->dispose(I)V

    .line 438
    return-void
.end method

.method public getPlatformViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "viewId"    # I

    .line 334
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/PlatformView;

    .line 335
    .local v0, "platformView":Lio/flutter/plugin/platform/PlatformView;
    if-nez v0, :cond_0

    .line 336
    const/4 v1, 0x0

    return-object v1

    .line 338
    :cond_0
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;
    .locals 1

    .line 316
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->registry:Lio/flutter/plugin/platform/PlatformViewRegistryImpl;

    return-object v0
.end method

.method public hideOverlaySurface()V
    .locals 3

    .line 745
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->overlaySurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 746
    return-void

    .line 748
    :cond_0
    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformViewsController2;->createTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 749
    .local v0, "tx":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->overlaySurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 750
    return-void
.end method

.method public hidePlatformView(I)V
    .locals 2
    .param p1, "viewId"    # I

    .line 660
    invoke-virtual {p0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->initializePlatformViewIfNeeded(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    return-void

    .line 664
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViewParent:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;

    .line 665
    .local v0, "parentView":Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->setVisibility(I)V

    .line 666
    return-void
.end method

.method initializePlatformViewIfNeeded(I)Z
    .locals 7
    .param p1, "viewId"    # I

    .line 448
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/PlatformView;

    .line 449
    .local v0, "platformView":Lio/flutter/plugin/platform/PlatformView;
    if-nez v0, :cond_0

    .line 450
    const/4 v1, 0x0

    return v1

    .line 452
    :cond_0
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViewParent:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 453
    return v2

    .line 455
    :cond_1
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v1

    .line 456
    .local v1, "embeddedView":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 460
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_2

    .line 465
    new-instance v3, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;

    iget-object v4, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->context:Landroid/content/Context;

    iget-object v5, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->context:Landroid/content/Context;

    .line 467
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

    invoke-direct {v3, v4, v5, v6}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;-><init>(Landroid/content/Context;FLio/flutter/embedding/android/AndroidTouchProcessor;)V

    .line 469
    .local v3, "parentView":Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;
    new-instance v4, Lio/flutter/plugin/platform/PlatformViewsController2$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugin/platform/PlatformViewsController2;I)V

    invoke-virtual {v3, v4}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->setOnDescendantFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 478
    iget-object v4, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViewParent:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 487
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 489
    invoke-virtual {v3, v1}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->addView(Landroid/view/View;)V

    .line 490
    iget-object v4, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v4, v3}, Lio/flutter/embedding/android/FlutterView;->addView(Landroid/view/View;)V

    .line 491
    return v2

    .line 461
    .end local v3    # "parentView":Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The Android view returned from PlatformView#getView() was already added to a parent view."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 457
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "PlatformView#getView() returned null, but an Android view reference was expected."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isHcppEnabled()Z
    .locals 1

    .line 753
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    if-nez v0, :cond_0

    .line 754
    const/4 v0, 0x0

    return v0

    .line 756
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->IsSurfaceControlEnabled()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$initializePlatformViewIfNeeded$0$io-flutter-plugin-platform-PlatformViewsController2(ILandroid/view/View;Z)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "hasFocus"    # Z

    .line 471
    if-eqz p3, :cond_0

    .line 472
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViewsChannel:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->invokeViewFocused(I)V

    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->clearPlatformViewClient(I)V

    .line 476
    :cond_1
    :goto_0
    return-void
.end method

.method public onDetachedFromJNI()V
    .locals 0

    .line 324
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformViewsController2;->disposeAllViews()V

    .line 325
    return-void
.end method

.method public onDisplayPlatformView(IIIIIIILio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;)V
    .locals 13
    .param p1, "viewId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "viewWidth"    # I
    .param p7, "viewHeight"    # I
    .param p8, "mutatorsStack"    # Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;

    .line 521
    invoke-virtual/range {p0 .. p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->initializePlatformViewIfNeeded(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViewParent:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;

    .line 526
    .local v1, "parentView":Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;
    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v2, p8

    invoke-virtual/range {v1 .. v6}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->readyToDisplay(Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;IIII)V

    .line 527
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->setVisibility(I)V

    .line 528
    invoke-virtual {v1}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->bringToFront()V

    .line 530
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x33

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct {v0, v10, v11, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 532
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->platformViews:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/plugin/platform/PlatformView;

    invoke-interface {v2}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v12

    .line 533
    .local v12, "view":Landroid/view/View;
    if-eqz v12, :cond_1

    .line 534
    invoke-virtual {v12, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    invoke-virtual {v12}, Landroid/view/View;->bringToFront()V

    .line 536
    instance-of v2, v12, Landroid/view/SurfaceView;

    if-eqz v2, :cond_1

    .line 537
    move-object v3, v12

    check-cast v3, Landroid/view/SurfaceView;

    move-object v2, p0

    move v9, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p8

    invoke-direct/range {v2 .. v9}, Lio/flutter/plugin/platform/PlatformViewsController2;->maybeApplyClipToSurfaceView(Landroid/view/SurfaceView;IIIILio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;I)V

    .line 540
    :cond_1
    return-void
.end method

.method public onEndFrame()V
    .locals 3

    .line 670
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 671
    .local v0, "tx":Landroid/view/SurfaceControl$Transaction;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->activeTransactions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 672
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->activeTransactions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 671
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 674
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->activeTransactions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 675
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v1}, Lio/flutter/embedding/android/FlutterView;->invalidate()V

    .line 676
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v1}, Lio/flutter/embedding/android/FlutterView;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/AttachedSurfaceControl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 677
    return-void
.end method

.method public onPreEngineRestart()V
    .locals 0

    .line 328
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformViewsController2;->disposeAllViews()V

    .line 329
    return-void
.end method

.method public setFlutterJNI(Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 0
    .param p1, "flutterJNI"    # Lio/flutter/embedding/engine/FlutterJNI;

    .line 99
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 100
    return-void
.end method

.method public setRegistry(Lio/flutter/plugin/platform/PlatformViewRegistry;)V
    .locals 1
    .param p1, "registry"    # Lio/flutter/plugin/platform/PlatformViewRegistry;

    .line 94
    move-object v0, p1

    check-cast v0, Lio/flutter/plugin/platform/PlatformViewRegistryImpl;

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->registry:Lio/flutter/plugin/platform/PlatformViewRegistryImpl;

    .line 95
    return-void
.end method

.method public showOverlaySurface()V
    .locals 3

    .line 736
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->overlaySurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 737
    return-void

    .line 739
    :cond_0
    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformViewsController2;->createTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 740
    .local v0, "tx":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->overlaySurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 741
    return-void
.end method

.method public declared-synchronized swapTransactions()V
    .locals 2

    monitor-enter p0

    .line 681
    :try_start_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->activeTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 682
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->activeTransactions:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->pendingTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 683
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2;->pendingTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    monitor-exit p0

    return-void

    .line 680
    .end local p0    # "this":Lio/flutter/plugin/platform/PlatformViewsController2;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toMotionEvent(FLio/flutter/embedding/engine/systemchannels/PlatformViewTouch;)Landroid/view/MotionEvent;
    .locals 23
    .param p1, "density"    # F
    .param p2, "touch"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;

    .line 153
    move-object/from16 v0, p2

    iget-wide v1, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->motionEventId:J

    .line 154
    invoke-static {v1, v2}, Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;->from(J)Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;

    move-result-object v1

    .line 155
    .local v1, "motionEventId":Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;
    move-object/from16 v2, p0

    iget-object v3, v2, Lio/flutter/plugin/platform/PlatformViewsController2;->motionEventTracker:Lio/flutter/embedding/android/MotionEventTracker;

    invoke-virtual {v3, v1}, Lio/flutter/embedding/android/MotionEventTracker;->pop(Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 162
    .local v3, "trackedEvent":Landroid/view/MotionEvent;
    iget-object v4, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->rawPointerCoords:Ljava/lang/Object;

    .line 163
    move/from16 v5, p1

    invoke-static {v4, v5}, Lio/flutter/plugin/platform/PlatformViewsController2;->parsePointerCoordsList(Ljava/lang/Object;F)Ljava/util/List;

    move-result-object v4

    iget v6, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->pointerCount:I

    new-array v6, v6, [Landroid/view/MotionEvent$PointerCoords;

    .line 164
    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, [Landroid/view/MotionEvent$PointerCoords;

    .line 166
    .local v13, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    if-eqz v3, :cond_0

    .line 169
    invoke-static {v3, v13}, Lio/flutter/plugin/platform/PlatformViewsController2;->translateMotionEvent(Landroid/view/MotionEvent;[Landroid/view/MotionEvent$PointerCoords;)V

    .line 170
    return-object v3

    .line 175
    :cond_0
    iget-object v4, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->rawPointerPropertiesList:Ljava/lang/Object;

    .line 176
    invoke-static {v4}, Lio/flutter/plugin/platform/PlatformViewsController2;->parsePointerPropertiesList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget v6, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->pointerCount:I

    new-array v6, v6, [Landroid/view/MotionEvent$PointerProperties;

    .line 177
    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, [Landroid/view/MotionEvent$PointerProperties;

    .line 179
    .local v12, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    iget-object v4, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->downTime:Ljava/lang/Number;

    .line 180
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    iget-object v4, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->eventTime:Ljava/lang/Number;

    .line 181
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

    .line 179
    move/from16 v21, v1

    move/from16 v16, v4

    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    return-object v1
.end method

.method public usesVirtualDisplay(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 104
    const/4 v0, 0x0

    return v0
.end method
