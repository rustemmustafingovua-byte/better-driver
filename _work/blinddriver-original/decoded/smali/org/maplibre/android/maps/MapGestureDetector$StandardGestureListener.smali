.class final Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;
.super Lorg/maplibre/android/gestures/StandardGestureDetector$SimpleStandardOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/MapGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StandardGestureListener"
.end annotation


# instance fields
.field private final doubleTapMovementThreshold:F

.field final synthetic this$0:Lorg/maplibre/android/maps/MapGestureDetector;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapGestureDetector;F)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-direct {p0}, Lorg/maplibre/android/gestures/StandardGestureDetector$SimpleStandardOnGestureListener;-><init>()V

    iput p2, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->doubleTapMovementThreshold:F

    return-void
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v1}, Lorg/maplibre/android/maps/MapGestureDetector;->j(Lorg/maplibre/android/maps/MapGestureDetector;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->p(Lorg/maplibre/android/maps/MapGestureDetector;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v2}, Lorg/maplibre/android/maps/MapGestureDetector;->d(Lorg/maplibre/android/maps/MapGestureDetector;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v2}, Lorg/maplibre/android/maps/MapGestureDetector;->d(Lorg/maplibre/android/maps/MapGestureDetector;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v2, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->doubleTapMovementThreshold:F

    cmpl-float v0, v0, v2

    const/4 v3, 0x0

    if-gtz v0, :cond_4

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1}, Lorg/maplibre/android/maps/UiSettings;->isZoomGesturesEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1}, Lorg/maplibre/android/maps/UiSettings;->isDoubleTapGesturesEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapGestureDetector;->c(Lorg/maplibre/android/maps/MapGestureDetector;)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapGestureDetector;->c(Lorg/maplibre/android/maps/MapGestureDetector;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/maplibre/android/maps/MapGestureDetector;->j(Lorg/maplibre/android/maps/MapGestureDetector;Landroid/graphics/PointF;)V

    :cond_3
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->d(Lorg/maplibre/android/maps/MapGestureDetector;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lorg/maplibre/android/maps/MapGestureDetector;->zoomInAnimated(Landroid/graphics/PointF;Z)V

    return v1

    :cond_4
    :goto_0
    return v3

    :cond_5
    invoke-super {p0, p1}, Lorg/maplibre/android/gestures/StandardGestureDetector$SimpleStandardOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v1}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/maplibre/android/maps/UiSettings;->isScrollGesturesEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v1}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/maplibre/android/maps/UiSettings;->isFlingVelocityAnimationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v1}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/maplibre/android/maps/UiSettings;->getPixelRatio()F

    move-result v1

    div-float v3, p3, v1

    float-to-double v3, v3

    div-float v1, p4, v1

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v1}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/maplibre/android/maps/UiSettings;->getFlingThreshold()J

    move-result-wide v5

    long-to-double v5, v5

    cmpg-double v1, v3, v5

    if-gez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v1}, Lorg/maplibre/android/maps/MapGestureDetector;->h(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/Transform;

    move-result-object v1

    invoke-virtual {v1}, Lorg/maplibre/android/maps/Transform;->getTilt()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v1, v5, v7

    if-eqz v1, :cond_3

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    div-double/2addr v5, v9

    goto :goto_0

    :cond_3
    move-wide v5, v7

    :goto_0
    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    add-double/2addr v5, v9

    const-wide/high16 v9, 0x401c000000000000L    # 7.0

    div-double/2addr v3, v9

    div-double/2addr v3, v5

    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v1}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/maplibre/android/maps/UiSettings;->getFlingAnimationBaseTime()J

    move-result-wide v5

    long-to-double v5, v5

    add-double/2addr v3, v5

    double-to-long v14, v3

    long-to-float v1, v14

    mul-float v3, p3, v1

    float-to-double v3, v3

    const-wide v5, 0x3fd1eb851eb851ecL    # 0.28

    mul-double/2addr v3, v5

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v9

    mul-float v1, v1, p4

    float-to-double v11, v1

    mul-double/2addr v11, v5

    div-double v12, v11, v9

    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v1}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/maplibre/android/maps/UiSettings;->isHorizontalScrollGesturesEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    div-double/2addr v3, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x4052c00000000000L    # 75.0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_4

    return v2

    :cond_4
    move-wide v10, v7

    goto :goto_1

    :cond_5
    move-wide v10, v3

    :goto_1
    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v1}, Lorg/maplibre/android/maps/MapGestureDetector;->h(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/Transform;

    move-result-object v1

    invoke-virtual {v1}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapGestureDetector;->notifyOnFlingListeners()V

    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v1}, Lorg/maplibre/android/maps/MapGestureDetector;->b(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/CameraChangeDispatcher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    iget-object v0, v0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->h(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/Transform;

    move-result-object v9

    invoke-virtual/range {v9 .. v15}, Lorg/maplibre/android/maps/Transform;->moveBy(DDJ)V

    return v2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/MapGestureDetector;->notifyOnMapLongClickListeners(Landroid/graphics/PointF;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapGestureDetector;->a(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/AnnotationManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/maplibre/android/maps/AnnotationManager;->onTap(Landroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1}, Lorg/maplibre/android/maps/UiSettings;->isDeselectMarkersOnTap()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapGestureDetector;->a(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/AnnotationManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/maplibre/android/maps/AnnotationManager;->deselectMarkers()V

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/MapGestureDetector;->notifyOnMapClickListeners(Landroid/graphics/PointF;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->h(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/Transform;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    const/4 p0, 0x1

    return p0
.end method
