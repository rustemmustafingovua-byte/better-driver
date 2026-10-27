.class Lorg/maplibre/android/location/LocationCameraController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/location/LocationCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private interrupt:Z

.field final synthetic this$0:Lorg/maplibre/android/location/LocationCameraController;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/LocationCameraController;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyMultiFingerMoveThreshold(Lorg/maplibre/android/gestures/MoveGestureDetector;)V
    .locals 2

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/MoveGestureDetector;->getMoveThreshold()F

    move-result v0

    iget-object v1, p0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v1}, Lorg/maplibre/android/location/LocationCameraController;->g(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/location/LocationComponentOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->g(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/location/LocationComponentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/maplibre/android/gestures/MoveGestureDetector;->setMoveThreshold(F)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationCameraController$6;->interrupt:Z

    :cond_0
    return-void
.end method

.method private applyMultiFingerThresholdArea(Lorg/maplibre/android/gestures/MoveGestureDetector;)V
    .locals 3

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/MoveGestureDetector;->getMoveThresholdRect()Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v2}, Lorg/maplibre/android/location/LocationCameraController;->g(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/location/LocationComponentOptions;

    move-result-object v2

    invoke-virtual {v2}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerProtectedMoveArea()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->g(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/location/LocationComponentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerProtectedMoveArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/maplibre/android/gestures/MoveGestureDetector;->setMoveThresholdRect(Landroid/graphics/RectF;)V

    iput-boolean v1, p0, Lorg/maplibre/android/location/LocationCameraController$6;->interrupt:Z

    return-void

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->g(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/location/LocationComponentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerProtectedMoveArea()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->g(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/location/LocationComponentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerProtectedMoveArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/maplibre/android/gestures/MoveGestureDetector;->setMoveThresholdRect(Landroid/graphics/RectF;)V

    iput-boolean v1, p0, Lorg/maplibre/android/location/LocationCameraController$6;->interrupt:Z

    :cond_1
    return-void
.end method

.method private applySingleFingerMoveThreshold(Lorg/maplibre/android/gestures/MoveGestureDetector;)V
    .locals 2

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/MoveGestureDetector;->getMoveThreshold()F

    move-result v0

    iget-object v1, p0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v1}, Lorg/maplibre/android/location/LocationCameraController;->g(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/location/LocationComponentOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingInitialMoveThreshold()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->g(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/location/LocationComponentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingInitialMoveThreshold()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/maplibre/android/gestures/MoveGestureDetector;->setMoveThreshold(F)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationCameraController$6;->interrupt:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onMove(Lorg/maplibre/android/gestures/MoveGestureDetector;)V
    .locals 1

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationCameraController$6;->interrupt:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/ProgressiveGesture;->interrupt()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->k(Lorg/maplibre/android/location/LocationCameraController;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->j(Lorg/maplibre/android/location/LocationCameraController;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/maplibre/android/location/LocationCameraController;->setCameraMode(I)V

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/ProgressiveGesture;->interrupt()V

    return-void
.end method

.method public onMoveBegin(Lorg/maplibre/android/gestures/MoveGestureDetector;)V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->g(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/location/LocationComponentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->k(Lorg/maplibre/android/location/LocationCameraController;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/MultiFingerGesture;->getPointersCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationCameraController$6;->applyMultiFingerThresholdArea(Lorg/maplibre/android/gestures/MoveGestureDetector;)V

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationCameraController$6;->applyMultiFingerMoveThreshold(Lorg/maplibre/android/gestures/MoveGestureDetector;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationCameraController$6;->applySingleFingerMoveThreshold(Lorg/maplibre/android/gestures/MoveGestureDetector;)V

    return-void

    :cond_1
    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationCameraController;->setCameraMode(I)V

    return-void
.end method

.method public onMoveEnd(Lorg/maplibre/android/gestures/MoveGestureDetector;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->g(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/location/LocationComponentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationCameraController$6;->interrupt:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->k(Lorg/maplibre/android/location/LocationCameraController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->g(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/location/LocationComponentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingInitialMoveThreshold()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/maplibre/android/gestures/MoveGestureDetector;->setMoveThreshold(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/maplibre/android/gestures/MoveGestureDetector;->setMoveThresholdRect(Landroid/graphics/RectF;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationCameraController$6;->interrupt:Z

    return-void
.end method
