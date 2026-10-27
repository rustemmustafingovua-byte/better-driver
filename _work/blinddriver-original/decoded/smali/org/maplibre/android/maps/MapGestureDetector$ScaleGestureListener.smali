.class final Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;
.super Lorg/maplibre/android/gestures/StandardScaleGestureDetector$SimpleStandardOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/MapGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScaleGestureListener"
.end annotation


# instance fields
.field private final minimumAngledGestureSpeed:F

.field private final minimumGestureSpeed:F

.field private final minimumVelocity:F

.field private quickZoom:Z

.field private final scaleVelocityRatioThreshold:D

.field private screenHeight:D

.field private spanSinceLast:F

.field private startZoom:D

.field final synthetic this$0:Lorg/maplibre/android/maps/MapGestureDetector;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapGestureDetector;DFFF)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-direct {p0}, Lorg/maplibre/android/gestures/StandardScaleGestureDetector$SimpleStandardOnScaleGestureListener;-><init>()V

    iput p4, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->minimumGestureSpeed:F

    iput p5, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->minimumAngledGestureSpeed:F

    iput p6, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->minimumVelocity:F

    const-wide p4, 0x3f70624dd2f1a9fcL    # 0.004

    mul-double/2addr p2, p4

    iput-wide p2, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->scaleVelocityRatioThreshold:D

    return-void
.end method

.method private calculateScale(DZ)D
    .locals 8

    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    mul-double/2addr p1, v0

    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    mul-double v2, p1, v0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    invoke-static/range {v2 .. v7}, Lorg/maplibre/android/utils/MathUtils;->clamp(DDD)D

    move-result-wide p0

    if-eqz p3, :cond_0

    neg-double p0, p0

    :cond_0
    return-wide p0
.end method

.method private getScaleFocalPoint(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;)Landroid/graphics/PointF;
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->c(Lorg/maplibre/android/maps/MapGestureDetector;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->c(Lorg/maplibre/android/maps/MapGestureDetector;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->quickZoom:Z

    if-eqz v0, :cond_1

    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->getWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getHeight()F

    move-result p0

    div-float/2addr p0, v1

    invoke-direct {p1, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/maplibre/android/gestures/MultiFingerGesture;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onScale(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;)Z
    .locals 13

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->b(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/CameraChangeDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->getScaleFocalPoint(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;)Landroid/graphics/PointF;

    move-result-object v0

    iget-boolean v2, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->quickZoom:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v3}, Lorg/maplibre/android/maps/MapGestureDetector;->d(Lorg/maplibre/android/maps/MapGestureDetector;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v3, v2

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v5, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v5}, Lorg/maplibre/android/maps/MapGestureDetector;->d(Lorg/maplibre/android/maps/MapGestureDetector;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-wide v7, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->screenHeight:D

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    const-wide/16 v5, 0x0

    invoke-static/range {v3 .. v12}, Lorg/maplibre/android/utils/MathUtils;->normalize(DDDDD)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->startZoom:D

    if-eqz v2, :cond_1

    sub-double/2addr v5, v3

    goto :goto_1

    :cond_1
    add-double/2addr v5, v3

    :goto_1
    iget-object v2, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v2}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/maplibre/android/maps/UiSettings;->getZoomRate()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v5, v2

    iget-object v2, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v2}, Lorg/maplibre/android/maps/MapGestureDetector;->h(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/Transform;

    move-result-object v2

    invoke-virtual {v2, v5, v6, v0}, Lorg/maplibre/android/maps/Transform;->setZoom(DLandroid/graphics/PointF;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->getScaleFactor()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    const-wide v4, 0x3fe4ccccc0000000L    # 0.6499999761581421

    mul-double/2addr v2, v4

    iget-object v4, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v4}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v4

    invoke-virtual {v4}, Lorg/maplibre/android/maps/UiSettings;->getZoomRate()F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    iget-object v4, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v4}, Lorg/maplibre/android/maps/MapGestureDetector;->h(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/Transform;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0}, Lorg/maplibre/android/maps/Transform;->zoomBy(DLandroid/graphics/PointF;)V

    :goto_2
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->notifyOnScaleListeners(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;)V

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->getPreviousSpan()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->spanSinceLast:F

    return v1
.end method

.method public onScaleBegin(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;)Z
    .locals 10

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/MultiFingerGesture;->getPointersCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->quickZoom:Z

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->isZoomGesturesEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->quickZoom:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->isQuickZoomGesturesEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->e(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getMoveGestureDetector()Lorg/maplibre/android/gestures/MoveGestureDetector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/maplibre/android/gestures/ProgressiveGesture;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->getPreviousSpan()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->getPreviousSpan()F

    move-result v3

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/BaseGesture;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    long-to-double v6, v6

    cmpl-double v8, v4, v6

    if-nez v8, :cond_4

    return v1

    :cond_4
    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v8, v0

    sub-double/2addr v4, v6

    div-double/2addr v8, v4

    iget v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->minimumGestureSpeed:F

    float-to-double v3, v0

    cmpg-double v0, v8, v3

    if-gez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->e(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getRotateGestureDetector()Lorg/maplibre/android/gestures/RotateGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->e(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getRotateGestureDetector()Lorg/maplibre/android/gestures/RotateGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/RotateGestureDetector;->getDeltaSinceLast()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v3, v0

    const-wide v5, 0x3fd999999999999aL    # 0.4

    cmpl-double v0, v3, v5

    if-lez v0, :cond_6

    iget v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->minimumAngledGestureSpeed:F

    float-to-double v3, v0

    cmpg-double v0, v8, v3

    if-gez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->isDisableRotateWhenScaling()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->e(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getRotateGestureDetector()Lorg/maplibre/android/gestures/RotateGestureDetector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/maplibre/android/gestures/ProgressiveGesture;->setEnabled(Z)V

    :cond_7
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->screenHeight:D

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->h(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/Transform;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->getRawZoom()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->startZoom:D

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->m(Lorg/maplibre/android/maps/MapGestureDetector;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->notifyOnScaleBeginListeners(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;)V

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->getPreviousSpan()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->spanSinceLast:F

    return v2

    :cond_8
    return v1
.end method

.method public onScaleEnd(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;FF)V
    .locals 11

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->quickZoom:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->e(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getMoveGestureDetector()Lorg/maplibre/android/gestures/MoveGestureDetector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/maplibre/android/gestures/ProgressiveGesture;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->e(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getRotateGestureDetector()Lorg/maplibre/android/gestures/RotateGestureDetector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/maplibre/android/gestures/ProgressiveGesture;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->notifyOnScaleEndListeners(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;)V

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    add-float/2addr p3, p2

    iget-object p2, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p2}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object p2

    invoke-virtual {p2}, Lorg/maplibre/android/maps/UiSettings;->isScaleVelocityAnimationEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->minimumVelocity:F

    cmpg-float p2, p3, p2

    if-ltz p2, :cond_2

    iget p2, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->spanSinceLast:F

    div-float/2addr p2, p3

    float-to-double v0, p2

    iget-wide v2, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->scaleVelocityRatioThreshold:D

    cmpg-double p2, v0, v2

    if-gez p2, :cond_1

    goto :goto_1

    :cond_1
    float-to-double p2, p3

    invoke-virtual {p1}, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->isScalingOut()Z

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->calculateScale(DZ)D

    move-result-wide v4

    iget-object p2, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p2}, Lorg/maplibre/android/maps/MapGestureDetector;->h(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/Transform;

    move-result-object p2

    invoke-virtual {p2}, Lorg/maplibre/android/maps/Transform;->getRawZoom()D

    move-result-wide v2

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->getScaleFocalPoint(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;)Landroid/graphics/PointF;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    div-double/2addr v9, v0

    add-double/2addr v9, p1

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    add-double/2addr p1, v7

    const-wide v0, 0x4062c00000000000L    # 150.0

    mul-double/2addr p1, v0

    double-to-long v7, p1

    iget-object v1, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static/range {v1 .. v8}, Lorg/maplibre/android/maps/MapGestureDetector;->n(Lorg/maplibre/android/maps/MapGestureDetector;DDLandroid/graphics/PointF;J)Landroid/animation/Animator;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->l(Lorg/maplibre/android/maps/MapGestureDetector;Landroid/animation/Animator;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->g(Lorg/maplibre/android/maps/MapGestureDetector;)Landroid/animation/Animator;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->q(Lorg/maplibre/android/maps/MapGestureDetector;Landroid/animation/Animator;)V

    return-void

    :cond_2
    :goto_1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->o(Lorg/maplibre/android/maps/MapGestureDetector;)V

    return-void
.end method
