.class final Lorg/maplibre/android/maps/MapGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;,
        Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;,
        Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;,
        Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;,
        Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;,
        Lorg/maplibre/android/maps/MapGestureDetector$TapGestureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MapGestureDetector"


# instance fields
.field private animationsTimeoutHandler:Landroid/os/Handler;

.field private final annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

.field private final cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

.field private final cancelAnimatorsRunnable:Ljava/lang/Runnable;

.field private constantFocalPoint:Landroid/graphics/PointF;

.field private doubleTapFocalPoint:Landroid/graphics/PointF;

.field private doubleTapRegistered:Z

.field private gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

.field private final onFlingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onMapClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onMapLongClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onScaleListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/maplibre/android/maps/MapLibreMap$OnScaleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onShoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/maplibre/android/maps/MapLibreMap$OnShoveListener;",
            ">;"
        }
    .end annotation
.end field

.field private final projection:Lorg/maplibre/android/maps/Projection;

.field private rotateAnimator:Landroid/animation/Animator;

.field private scaleAnimator:Landroid/animation/Animator;

.field private final scheduledAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final transform:Lorg/maplibre/android/maps/Transform;

.field private final uiSettings:Lorg/maplibre/android/maps/UiSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/maps/Projection;Lorg/maplibre/android/maps/UiSettings;Lorg/maplibre/android/maps/AnnotationManager;Lorg/maplibre/android/maps/CameraChangeDispatcher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMapClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMapLongClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onFlingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onScaleListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onShoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapFocalPoint:Landroid/graphics/PointF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->scheduledAnimators:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->animationsTimeoutHandler:Landroid/os/Handler;

    new-instance v0, Lorg/maplibre/android/maps/MapGestureDetector$1;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/MapGestureDetector$1;-><init>(Lorg/maplibre/android/maps/MapGestureDetector;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->cancelAnimatorsRunnable:Ljava/lang/Runnable;

    iput-object p5, p0, Lorg/maplibre/android/maps/MapGestureDetector;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    iput-object p2, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    iput-object p3, p0, Lorg/maplibre/android/maps/MapGestureDetector;->projection:Lorg/maplibre/android/maps/Projection;

    iput-object p4, p0, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    iput-object p6, p0, Lorg/maplibre/android/maps/MapGestureDetector;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    if-eqz p1, :cond_0

    new-instance p2, Lorg/maplibre/android/gestures/AndroidGesturesManager;

    invoke-direct {p2, p1}, Lorg/maplibre/android/gestures/AndroidGesturesManager;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Lorg/maplibre/android/maps/MapGestureDetector;->initializeGesturesManager(Lorg/maplibre/android/gestures/AndroidGesturesManager;Z)V

    invoke-direct {p0, p1, p3}, Lorg/maplibre/android/maps/MapGestureDetector;->initializeGestureListeners(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/AnnotationManager;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/CameraChangeDispatcher;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/maplibre/android/maps/MapGestureDetector;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->constantFocalPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelTransitionsIfRequired()V
    .locals 1

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->noGesturesInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    :cond_0
    return-void
.end method

.method private createScaleAnimator(DDLandroid/graphics/PointF;J)Landroid/animation/Animator;
    .locals 1

    double-to-float v0, p1

    add-double/2addr p1, p3

    double-to-float p1, p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 p3, 0x0

    aput v0, p2, p3

    const/4 p3, 0x1

    aput p1, p2, p3

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p6, p7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lorg/maplibre/android/maps/MapGestureDetector$2;

    invoke-direct {p2, p0, p5}, Lorg/maplibre/android/maps/MapGestureDetector$2;-><init>(Lorg/maplibre/android/maps/MapGestureDetector;Landroid/graphics/PointF;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lorg/maplibre/android/maps/MapGestureDetector$3;

    invoke-direct {p2, p0}, Lorg/maplibre/android/maps/MapGestureDetector$3;-><init>(Lorg/maplibre/android/maps/MapGestureDetector;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method public static bridge synthetic d(Lorg/maplibre/android/maps/MapGestureDetector;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapFocalPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method private dispatchCameraIdle()V
    .locals 1

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->noGesturesInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->invalidateCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle()V

    :cond_0
    return-void
.end method

.method private doubleTapFinished()V
    .locals 2

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getMoveGestureDetector()Lorg/maplibre/android/gestures/MoveGestureDetector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/gestures/ProgressiveGesture;->setEnabled(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapRegistered:Z

    :cond_0
    return-void
.end method

.method private doubleTapStarted()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getMoveGestureDetector()Lorg/maplibre/android/gestures/MoveGestureDetector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/maplibre/android/gestures/ProgressiveGesture;->setEnabled(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapRegistered:Z

    return-void
.end method

.method public static bridge synthetic e(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/gestures/AndroidGesturesManager;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    return-object p0
.end method

.method public static bridge synthetic f(Lorg/maplibre/android/maps/MapGestureDetector;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->rotateAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public static bridge synthetic g(Lorg/maplibre/android/maps/MapGestureDetector;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->scaleAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public static bridge synthetic h(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/Transform;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    return-object p0
.end method

.method public static bridge synthetic i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    return-object p0
.end method

.method private initializeGestureListeners(Landroid/content/Context;Z)V
    .locals 12

    if-eqz p2, :cond_0

    new-instance v8, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/maplibre/android/gestures/R$dimen;->mapbox_defaultScaleSpanSinceStartThreshold:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-direct {v8, p0, v0}, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;-><init>(Lorg/maplibre/android/maps/MapGestureDetector;F)V

    new-instance v9, Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;-><init>(Lorg/maplibre/android/maps/MapGestureDetector;I)V

    new-instance v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/maplibre/android/R$dimen;->maplibre_density_constant:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/maplibre/android/R$dimen;->maplibre_minimum_scale_speed:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lorg/maplibre/android/R$dimen;->maplibre_minimum_angled_scale_speed:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lorg/maplibre/android/R$dimen;->maplibre_minimum_scale_velocity:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;-><init>(Lorg/maplibre/android/maps/MapGestureDetector;DFFF)V

    move-object v11, v0

    new-instance v0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/maplibre/android/R$dimen;->maplibre_minimum_scale_span_when_rotating:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lorg/maplibre/android/R$dimen;->maplibre_density_constant:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v3, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lorg/maplibre/android/R$dimen;->maplibre_angular_velocity_multiplier:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lorg/maplibre/android/R$dimen;->maplibre_minimum_angular_velocity:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v7, Lorg/maplibre/android/gestures/R$dimen;->mapbox_defaultScaleSpanSinceStartThreshold:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;-><init>(Lorg/maplibre/android/maps/MapGestureDetector;FDFFF)V

    new-instance v2, Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;

    invoke-direct {v2, p0, v10}, Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;-><init>(Lorg/maplibre/android/maps/MapGestureDetector;I)V

    new-instance v3, Lorg/maplibre/android/maps/MapGestureDetector$TapGestureListener;

    invoke-direct {v3, p0, v10}, Lorg/maplibre/android/maps/MapGestureDetector$TapGestureListener;-><init>(Lorg/maplibre/android/maps/MapGestureDetector;I)V

    iget-object v4, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    invoke-virtual {v4, v8}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->setStandardGestureListener(Lorg/maplibre/android/gestures/StandardGestureDetector$StandardOnGestureListener;)V

    iget-object v4, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    invoke-virtual {v4, v9}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->setMoveGestureListener(Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;)V

    iget-object v4, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    invoke-virtual {v4, v11}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->setStandardScaleGestureListener(Lorg/maplibre/android/gestures/StandardScaleGestureDetector$StandardOnScaleGestureListener;)V

    iget-object v4, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    invoke-virtual {v4, v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->setRotateGestureListener(Lorg/maplibre/android/gestures/RotateGestureDetector$OnRotateGestureListener;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    invoke-virtual {v0, v2}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->setShoveGestureListener(Lorg/maplibre/android/gestures/ShoveGestureDetector$OnShoveGestureListener;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    invoke-virtual {v0, v3}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->setMultiFingerTapGestureListener(Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector$OnMultiFingerTapGestureListener;)V

    :cond_0
    return-void
.end method

.method private initializeGesturesManager(Lorg/maplibre/android/gestures/AndroidGesturesManager;Z)V
    .locals 6

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-array v1, v2, [Ljava/util/Set;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    aput-object v4, v1, v0

    aput-object v5, v1, v3

    invoke-virtual {p1, v1}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->setMutuallyExclusiveGestures([Ljava/util/Set;)V

    :cond_0
    invoke-virtual {p1}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getRotateGestureDetector()Lorg/maplibre/android/gestures/RotateGestureDetector;

    move-result-object p2

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p2, v0}, Lorg/maplibre/android/gestures/RotateGestureDetector;->setAngleThreshold(F)V

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getMoveGestureDetector()Lorg/maplibre/android/gestures/MoveGestureDetector;

    move-result-object p2

    sget v0, Lorg/maplibre/android/R$dimen;->maplibre_minimum_move_threshold:I

    invoke-virtual {p2, v0}, Lorg/maplibre/android/gestures/MoveGestureDetector;->setMoveThresholdResource(I)V

    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    return-void
.end method

.method public static bridge synthetic j(Lorg/maplibre/android/maps/MapGestureDetector;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapFocalPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public static bridge synthetic k(Lorg/maplibre/android/maps/MapGestureDetector;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->rotateAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public static bridge synthetic l(Lorg/maplibre/android/maps/MapGestureDetector;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->scaleAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public static bridge synthetic m(Lorg/maplibre/android/maps/MapGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->cancelTransitionsIfRequired()V

    return-void
.end method

.method public static bridge synthetic n(Lorg/maplibre/android/maps/MapGestureDetector;DDLandroid/graphics/PointF;J)Landroid/animation/Animator;
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/maplibre/android/maps/MapGestureDetector;->createScaleAnimator(DDLandroid/graphics/PointF;J)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private noGesturesInProgress()Z
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->isScrollGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getMoveGestureDetector()Lorg/maplibre/android/gestures/MoveGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->isZoomGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getStandardScaleGestureDetector()Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->isRotateGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getRotateGestureDetector()Lorg/maplibre/android/gestures/RotateGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->isTiltGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getShoveGestureDetector()Lorg/maplibre/android/gestures/ShoveGestureDetector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static bridge synthetic o(Lorg/maplibre/android/maps/MapGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->dispatchCameraIdle()V

    return-void
.end method

.method public static bridge synthetic p(Lorg/maplibre/android/maps/MapGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapStarted()V

    return-void
.end method

.method public static bridge synthetic q(Lorg/maplibre/android/maps/MapGestureDetector;Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->scheduleAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method private scheduleAnimator(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->scheduledAnimators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->animationsTimeoutHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->animationsTimeoutHandler:Landroid/os/Handler;

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->cancelAnimatorsRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private zoomAnimated(ZLandroid/graphics/PointF;Z)V
    .locals 9

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->scaleAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/MapGestureDetector;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->getRawZoom()D

    move-result-wide v2

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v4, v0

    goto :goto_1

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0

    :goto_1
    const-wide/16 v7, 0x12c

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lorg/maplibre/android/maps/MapGestureDetector;->createScaleAnimator(DDLandroid/graphics/PointF;J)Landroid/animation/Animator;

    move-result-object p0

    iput-object p0, v1, Lorg/maplibre/android/maps/MapGestureDetector;->scaleAnimator:Landroid/animation/Animator;

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    :cond_1
    invoke-direct {v1, p0}, Lorg/maplibre/android/maps/MapGestureDetector;->scheduleAnimator(Landroid/animation/Animator;)V

    return-void
.end method


# virtual methods
.method public addOnFlingListener(Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onFlingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnMapClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMapClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnMapLongClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMapLongClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnRotateListener(Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnScaleListener(Lorg/maplibre/android/maps/MapLibreMap$OnScaleListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onScaleListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addShoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnShoveListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onShoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelAnimators()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->animationsTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->scheduledAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->scaleAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/MapGestureDetector;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->rotateAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/MapGestureDetector;->cancelAnimator(Landroid/animation/Animator;)V

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->dispatchCameraIdle()V

    return-void
.end method

.method public getGesturesManager()Lorg/maplibre/android/gestures/AndroidGesturesManager;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    return-object p0
.end method

.method public notifyOnFlingListeners()V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onFlingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;

    invoke-interface {v0}, Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;->onFling()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyOnMapClickListeners(Landroid/graphics/PointF;)V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMapClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;

    iget-object v2, p0, Lorg/maplibre/android/maps/MapGestureDetector;->projection:Lorg/maplibre/android/maps/Projection;

    invoke-virtual {v2, p1}, Lorg/maplibre/android/maps/Projection;->fromScreenLocation(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;->onMapClick(Lorg/maplibre/android/geometry/LatLng;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method public notifyOnMapLongClickListeners(Landroid/graphics/PointF;)V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMapLongClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;

    iget-object v2, p0, Lorg/maplibre/android/maps/MapGestureDetector;->projection:Lorg/maplibre/android/maps/Projection;

    invoke-virtual {v2, p1}, Lorg/maplibre/android/maps/Projection;->fromScreenLocation(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;->onMapLongClick(Lorg/maplibre/android/geometry/LatLng;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method public notifyOnMoveBeginListeners(Lorg/maplibre/android/gestures/MoveGestureDetector;)V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;->onMoveBegin(Lorg/maplibre/android/gestures/MoveGestureDetector;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyOnMoveEndListeners(Lorg/maplibre/android/gestures/MoveGestureDetector;)V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;->onMoveEnd(Lorg/maplibre/android/gestures/MoveGestureDetector;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyOnMoveListeners(Lorg/maplibre/android/gestures/MoveGestureDetector;)V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;->onMove(Lorg/maplibre/android/gestures/MoveGestureDetector;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyOnRotateBeginListeners(Lorg/maplibre/android/gestures/RotateGestureDetector;)V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;->onRotateBegin(Lorg/maplibre/android/gestures/RotateGestureDetector;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyOnRotateEndListeners(Lorg/maplibre/android/gestures/RotateGestureDetector;)V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;->onRotateEnd(Lorg/maplibre/android/gestures/RotateGestureDetector;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyOnRotateListeners(Lorg/maplibre/android/gestures/RotateGestureDetector;)V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;->onRotate(Lorg/maplibre/android/gestures/RotateGestureDetector;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyOnScaleBeginListeners(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;)V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onScaleListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap$OnScaleListener;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnScaleListener;->onScaleBegin(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyOnScaleEndListeners(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;)V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onScaleListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap$OnScaleListener;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnScaleListener;->onScaleEnd(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyOnScaleListeners(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;)V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onScaleListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap$OnScaleListener;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnScaleListener;->onScale(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyOnShoveBeginListeners(Lorg/maplibre/android/gestures/ShoveGestureDetector;)V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onShoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap$OnShoveListener;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnShoveListener;->onShoveBegin(Lorg/maplibre/android/gestures/ShoveGestureDetector;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyOnShoveEndListeners(Lorg/maplibre/android/gestures/ShoveGestureDetector;)V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onShoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap$OnShoveListener;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnShoveListener;->onShoveEnd(Lorg/maplibre/android/gestures/ShoveGestureDetector;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyOnShoveListeners(Lorg/maplibre/android/gestures/ShoveGestureDetector;)V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onShoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap$OnShoveListener;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnShoveListener;->onShove(Lorg/maplibre/android/gestures/ShoveGestureDetector;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->isZoomGesturesEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    float-to-double v0, v0

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v2, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0, v1, v2}, Lorg/maplibre/android/maps/Transform;->zoomBy(DLandroid/graphics/PointF;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->cancelAnimators()V

    iget-object v1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {v1, v2}, Lorg/maplibre/android/maps/Transform;->setGestureInProgress(Z)V

    :cond_2
    iget-object v1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    invoke-virtual {v1, p1}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapFinished()V

    return v1

    :cond_4
    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->scheduledAnimators:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p1, v0}, Lorg/maplibre/android/maps/Transform;->setGestureInProgress(Z)V

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapFinished()V

    return v1

    :cond_5
    invoke-direct {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapFinished()V

    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p1, v0}, Lorg/maplibre/android/maps/Transform;->setGestureInProgress(Z)V

    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->scheduledAnimators:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->animationsTimeoutHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->scheduledAnimators:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->scheduledAnimators:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_7
    :goto_1
    return v1
.end method

.method public removeOnFlingListener(Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onFlingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnMapClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMapClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnMapLongClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMapLongClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnRotateListener(Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnScaleListener(Lorg/maplibre/android/maps/MapLibreMap$OnScaleListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onScaleListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeShoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnShoveListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onShoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFocalPoint(Landroid/graphics/PointF;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/UiSettings;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->constantFocalPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public setGesturesManager(Landroid/content/Context;Lorg/maplibre/android/gestures/AndroidGesturesManager;ZZ)V
    .locals 0

    invoke-direct {p0, p2, p4}, Lorg/maplibre/android/maps/MapGestureDetector;->initializeGesturesManager(Lorg/maplibre/android/gestures/AndroidGesturesManager;Z)V

    invoke-direct {p0, p1, p3}, Lorg/maplibre/android/maps/MapGestureDetector;->initializeGestureListeners(Landroid/content/Context;Z)V

    return-void
.end method

.method public zoomInAnimated(Landroid/graphics/PointF;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/maplibre/android/maps/MapGestureDetector;->zoomAnimated(ZLandroid/graphics/PointF;Z)V

    return-void
.end method

.method public zoomOutAnimated(Landroid/graphics/PointF;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/maplibre/android/maps/MapGestureDetector;->zoomAnimated(ZLandroid/graphics/PointF;Z)V

    return-void
.end method
