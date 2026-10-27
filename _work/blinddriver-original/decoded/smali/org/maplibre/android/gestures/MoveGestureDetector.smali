.class public Lorg/maplibre/android/gestures/MoveGestureDetector;
.super Lorg/maplibre/android/gestures/ProgressiveGesture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/gestures/MoveGestureDetector$SimpleOnMoveGestureListener;,
        Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/maplibre/android/gestures/ProgressiveGesture<",
        "Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final MOVE_REQUIRED_POINTERS_COUNT:I = 0x1

.field private static final handledTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field lastDistanceX:F

.field lastDistanceY:F

.field private final moveDistancesObjectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/maplibre/android/gestures/MoveDistancesObject;",
            ">;"
        }
    .end annotation
.end field

.field private moveThreshold:F

.field private moveThresholdRect:Landroid/graphics/RectF;

.field private previousFocalPoint:Landroid/graphics/PointF;

.field private resetFocal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/maplibre/android/gestures/MoveGestureDetector;->handledTypes:Ljava/util/Set;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/gestures/AndroidGesturesManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/gestures/ProgressiveGesture;-><init>(Landroid/content/Context;Lorg/maplibre/android/gestures/AndroidGesturesManager;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveDistancesObjectMap:Ljava/util/Map;

    return-void
.end method

.method private updateMoveDistancesObjects()V
    .locals 6

    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveDistancesObjectMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/gestures/MoveDistancesObject;

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/maplibre/android/gestures/MoveDistancesObject;->addNewPosition(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public analyzeEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->resetFocal:Z

    iget-object v0, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveDistancesObjectMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveDistancesObjectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveDistancesObjectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->resetFocal:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget-object v2, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveDistancesObjectMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lorg/maplibre/android/gestures/MoveDistancesObject;

    invoke-direct {v4, v0, v1}, Lorg/maplibre/android/gestures/MoveDistancesObject;-><init>(FF)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-super {p0, p1}, Lorg/maplibre/android/gestures/ProgressiveGesture;->analyzeEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public analyzeMovement()Z
    .locals 5

    invoke-super {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->analyzeMovement()Z

    invoke-direct {p0}, Lorg/maplibre/android/gestures/MoveGestureDetector;->updateMoveDistancesObjects()V

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v2, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->previousFocalPoint:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iput v3, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->lastDistanceX:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    iput v2, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->lastDistanceY:F

    iput-object v0, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->previousFocalPoint:Landroid/graphics/PointF;

    iget-boolean v0, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->resetFocal:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->resetFocal:Z

    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, v1}, Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;->onMove(Lorg/maplibre/android/gestures/MoveGestureDetector;FF)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;

    invoke-interface {v0, p0, v3, v2}, Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;->onMove(Lorg/maplibre/android/gestures/MoveGestureDetector;FF)Z

    move-result p0

    return p0

    :cond_1
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/maplibre/android/gestures/MoveGestureDetector;->canExecute(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;

    invoke-interface {v0, p0}, Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;->onMoveBegin(Lorg/maplibre/android/gestures/MoveGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->gestureStarted()V

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->previousFocalPoint:Landroid/graphics/PointF;

    iput-boolean v1, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->resetFocal:Z

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public canExecute(I)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/maplibre/android/gestures/MultiFingerGesture;->canExecute(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MoveGestureDetector;->checkAnyMoveAboveThreshold()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public checkAnyMoveAboveThreshold()Z
    .locals 5

    iget-object v0, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveDistancesObjectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/gestures/MoveDistancesObject;

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/MoveDistancesObject;->getDistanceXSinceStart()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThreshold:F

    cmpl-float v1, v1, v3

    const/4 v3, 0x1

    if-gez v1, :cond_1

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/MoveDistancesObject;->getDistanceYSinceStart()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThreshold:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    iget-object v1, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThresholdRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, p0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    return v3

    :cond_3
    :goto_2
    return v2
.end method

.method public gestureStopped()V
    .locals 3

    invoke-super {p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->gestureStopped()V

    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;

    iget v1, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->velocityX:F

    iget v2, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->velocityY:F

    invoke-interface {v0, p0, v1, v2}, Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;->onMoveEnd(Lorg/maplibre/android/gestures/MoveGestureDetector;FF)V

    return-void
.end method

.method public getLastDistanceX()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->lastDistanceX:F

    return p0
.end method

.method public getLastDistanceY()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->lastDistanceY:F

    return p0
.end method

.method public getMoveObject(I)Lorg/maplibre/android/gestures/MoveDistancesObject;
    .locals 1

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->getPointersCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveDistancesObjectMap:Ljava/util/Map;

    iget-object p0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/gestures/MoveDistancesObject;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMoveThreshold()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThreshold:F

    return p0
.end method

.method public getMoveThresholdRect()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThresholdRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getRequiredPointersCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public provideHandledTypes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->handledTypes:Ljava/util/Set;

    return-object p0
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->reset()V

    return-void
.end method

.method public setMoveThreshold(F)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThreshold:F

    return-void
.end method

.method public setMoveThresholdRect(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThresholdRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setMoveThresholdResource(I)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/gestures/MoveGestureDetector;->setMoveThreshold(F)V

    return-void
.end method
