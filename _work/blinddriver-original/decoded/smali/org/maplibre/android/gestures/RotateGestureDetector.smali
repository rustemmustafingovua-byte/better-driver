.class public Lorg/maplibre/android/gestures/RotateGestureDetector;
.super Lorg/maplibre/android/gestures/ProgressiveGesture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/gestures/RotateGestureDetector$SimpleOnRotateGestureListener;,
        Lorg/maplibre/android/gestures/RotateGestureDetector$OnRotateGestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/maplibre/android/gestures/ProgressiveGesture<",
        "Lorg/maplibre/android/gestures/RotateGestureDetector$OnRotateGestureListener;",
        ">;"
    }
.end annotation


# static fields
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
.field private angleThreshold:F

.field deltaSinceLast:F

.field deltaSinceStart:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/maplibre/android/gestures/RotateGestureDetector;->handledTypes:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/gestures/AndroidGesturesManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/gestures/ProgressiveGesture;-><init>(Landroid/content/Context;Lorg/maplibre/android/gestures/AndroidGesturesManager;)V

    return-void
.end method


# virtual methods
.method public analyzeMovement()Z
    .locals 3

    invoke-super {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->analyzeMovement()Z

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/RotateGestureDetector;->getRotationDegreesSinceLast()F

    move-result v0

    iput v0, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceLast:F

    iget v1, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceStart:F

    add-float/2addr v1, v0

    iput v1, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceStart:F

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceLast:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    check-cast v1, Lorg/maplibre/android/gestures/RotateGestureDetector$OnRotateGestureListener;

    iget v2, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceStart:F

    invoke-interface {v1, p0, v0, v2}, Lorg/maplibre/android/gestures/RotateGestureDetector$OnRotateGestureListener;->onRotate(Lorg/maplibre/android/gestures/RotateGestureDetector;FF)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/maplibre/android/gestures/RotateGestureDetector;->canExecute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/gestures/RotateGestureDetector$OnRotateGestureListener;

    invoke-interface {v0, p0}, Lorg/maplibre/android/gestures/RotateGestureDetector$OnRotateGestureListener;->onRotateBegin(Lorg/maplibre/android/gestures/RotateGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->gestureStarted()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public calculateAngularVelocityVector(FF)F
    .locals 6

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, p2

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, p1

    add-float/2addr p2, v0

    float-to-double p1, p2

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v0

    div-double/2addr p1, v2

    double-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceLast:F

    const/4 p2, 0x0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_0

    neg-float p0, p1

    return p0

    :cond_0
    return p1
.end method

.method public canExecute(I)Z
    .locals 2

    iget v0, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceStart:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->angleThreshold:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-super {p0, p1}, Lorg/maplibre/android/gestures/MultiFingerGesture;->canExecute(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public gestureStopped()V
    .locals 4

    invoke-super {p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->gestureStopped()V

    iget v0, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceLast:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iput v1, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->velocityX:F

    iput v1, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->velocityY:F

    :cond_0
    iget v0, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->velocityX:F

    iget v1, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->velocityY:F

    invoke-virtual {p0, v0, v1}, Lorg/maplibre/android/gestures/RotateGestureDetector;->calculateAngularVelocityVector(FF)F

    move-result v0

    iget-object v1, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    check-cast v1, Lorg/maplibre/android/gestures/RotateGestureDetector$OnRotateGestureListener;

    iget v2, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->velocityX:F

    iget v3, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->velocityY:F

    invoke-interface {v1, p0, v2, v3, v0}, Lorg/maplibre/android/gestures/RotateGestureDetector$OnRotateGestureListener;->onRotateEnd(Lorg/maplibre/android/gestures/RotateGestureDetector;FFF)V

    return-void
.end method

.method public getAngleThreshold()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->angleThreshold:F

    return p0
.end method

.method public getDeltaSinceLast()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceLast:F

    return p0
.end method

.method public getDeltaSinceStart()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceStart:F

    return p0
.end method

.method public getRotationDegreesSinceLast()F
    .locals 6

    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointersDistanceMap:Ljava/util/HashMap;

    new-instance v1, Lorg/maplibre/android/gestures/PointerDistancePair;

    iget-object v2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object p0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-direct {v1, v2, p0}, Lorg/maplibre/android/gestures/PointerDistancePair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->getPrevFingersDiffY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->getPrevFingersDiffX()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->getCurrFingersDiffY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->getCurrFingersDiffX()F

    move-result p0

    float-to-double v4, p0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

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

    sget-object p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->handledTypes:Ljava/util/Set;

    return-object p0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceStart:F

    return-void
.end method

.method public setAngleThreshold(F)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->angleThreshold:F

    return-void
.end method
