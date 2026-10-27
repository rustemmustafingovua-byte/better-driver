.class final Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;
.super Lorg/maplibre/android/gestures/RotateGestureDetector$SimpleOnRotateGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/MapGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RotateGestureListener"
.end annotation


# instance fields
.field private final angularVelocityMultiplier:F

.field private final defaultSpanSinceStartThreshold:F

.field private final minimumAngularVelocity:F

.field private final minimumScaleSpanWhenRotating:F

.field private final rotateVelocityRatioThreshold:D

.field final synthetic this$0:Lorg/maplibre/android/maps/MapGestureDetector;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapGestureDetector;FDFFF)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-direct {p0}, Lorg/maplibre/android/gestures/RotateGestureDetector$SimpleOnRotateGestureListener;-><init>()V

    iput p2, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->minimumScaleSpanWhenRotating:F

    iput p5, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->angularVelocityMultiplier:F

    iput p6, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->minimumAngularVelocity:F

    const-wide p1, 0x3f2cd5f99c38b04cL    # 2.2000000000000003E-4

    mul-double/2addr p3, p1

    iput-wide p3, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->rotateVelocityRatioThreshold:D

    iput p7, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->defaultSpanSinceStartThreshold:F

    return-void
.end method

.method private createRotateAnimator(FJLandroid/graphics/PointF;)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener$1;

    invoke-direct {p2, p0, p4}, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener$1;-><init>(Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;Landroid/graphics/PointF;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener$2;

    invoke-direct {p2, p0}, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener$2;-><init>(Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method private getRotateFocalPoint(Lorg/maplibre/android/gestures/RotateGestureDetector;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->c(Lorg/maplibre/android/maps/MapGestureDetector;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->c(Lorg/maplibre/android/maps/MapGestureDetector;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/maplibre/android/gestures/MultiFingerGesture;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onRotate(Lorg/maplibre/android/gestures/RotateGestureDetector;FF)Z
    .locals 4

    iget-object p3, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p3}, Lorg/maplibre/android/maps/MapGestureDetector;->b(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/CameraChangeDispatcher;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    iget-object p3, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p3}, Lorg/maplibre/android/maps/MapGestureDetector;->h(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/Transform;

    move-result-object p3

    invoke-virtual {p3}, Lorg/maplibre/android/maps/Transform;->getRawBearing()D

    move-result-wide v1

    float-to-double p2, p2

    add-double/2addr v1, p2

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->getRotateFocalPoint(Lorg/maplibre/android/gestures/RotateGestureDetector;)Landroid/graphics/PointF;

    move-result-object p2

    iget-object p3, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p3}, Lorg/maplibre/android/maps/MapGestureDetector;->h(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/Transform;

    move-result-object p3

    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v1, v2, v3, p2}, Lorg/maplibre/android/maps/Transform;->setBearing(DFF)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->notifyOnRotateListeners(Lorg/maplibre/android/gestures/RotateGestureDetector;)V

    return v0
.end method

.method public onRotateBegin(Lorg/maplibre/android/gestures/RotateGestureDetector;)Z
    .locals 8

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->isRotateGesturesEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/maplibre/android/gestures/RotateGestureDetector;->getDeltaSinceLast()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/BaseGesture;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    long-to-double v4, v4

    cmpl-double v6, v2, v4

    if-nez v6, :cond_1

    return v1

    :cond_1
    float-to-double v6, v0

    sub-double/2addr v2, v4

    div-double/2addr v6, v2

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/RotateGestureDetector;->getDeltaSinceStart()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    cmpg-double v2, v6, v2

    if-ltz v2, :cond_6

    const-wide v2, 0x3fb1eb851eb851ecL    # 0.07

    cmpl-double v2, v6, v2

    if-lez v2, :cond_2

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_6

    :cond_2
    const-wide v2, 0x3fc3333333333333L    # 0.15

    cmpl-double v2, v6, v2

    if-lez v2, :cond_3

    const/high16 v2, 0x40e00000    # 7.0f

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_6

    :cond_3
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v6, v2

    if-lez v2, :cond_4

    const/high16 v2, 0x41700000    # 15.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->isIncreaseScaleThresholdWhenRotating()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->e(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getStandardScaleGestureDetector()Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    move-result-object v0

    iget v1, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->minimumScaleSpanWhenRotating:F

    invoke-virtual {v0, v1}, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->setSpanSinceStartThreshold(F)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->e(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getStandardScaleGestureDetector()Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->interrupt()V

    :cond_5
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->m(Lorg/maplibre/android/maps/MapGestureDetector;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->notifyOnRotateBeginListeners(Lorg/maplibre/android/gestures/RotateGestureDetector;)V

    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_0
    return v1
.end method

.method public onRotateEnd(Lorg/maplibre/android/gestures/RotateGestureDetector;FFF)V
    .locals 6

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->isIncreaseScaleThresholdWhenRotating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->e(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getStandardScaleGestureDetector()Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    move-result-object v0

    iget v1, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->defaultSpanSinceStartThreshold:F

    invoke-virtual {v0, v1}, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->setSpanSinceStartThreshold(F)V

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->notifyOnRotateEndListeners(Lorg/maplibre/android/gestures/RotateGestureDetector;)V

    iget v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->angularVelocityMultiplier:F

    mul-float/2addr p4, v0

    const/high16 v0, -0x3e100000    # -30.0f

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {p4, v0, v1}, Lorg/maplibre/android/utils/MathUtils;->clamp(FFF)F

    move-result p4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    add-float/2addr p3, p2

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/RotateGestureDetector;->getDeltaSinceLast()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr p2, p3

    float-to-double p2, p2

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->isRotateVelocityAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->minimumAngularVelocity:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->e(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getStandardScaleGestureDetector()Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->rotateVelocityRatioThreshold:D

    cmpg-double p2, p2, v0

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double p2, p2

    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v0

    add-double/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    add-double/2addr p2, v2

    const-wide v0, 0x4062c00000000000L    # 150.0

    mul-double/2addr p2, v0

    double-to-long p2, p2

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->getRotateFocalPoint(Lorg/maplibre/android/gestures/RotateGestureDetector;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-direct {p0, p4, p2, p3, p1}, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->createRotateAnimator(FJLandroid/graphics/PointF;)Landroid/animation/Animator;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->k(Lorg/maplibre/android/maps/MapGestureDetector;Landroid/animation/Animator;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->f(Lorg/maplibre/android/maps/MapGestureDetector;)Landroid/animation/Animator;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->q(Lorg/maplibre/android/maps/MapGestureDetector;Landroid/animation/Animator;)V

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->o(Lorg/maplibre/android/maps/MapGestureDetector;)V

    return-void
.end method
