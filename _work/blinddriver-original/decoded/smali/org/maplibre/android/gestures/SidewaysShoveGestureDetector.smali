.class public Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;
.super Lorg/maplibre/android/gestures/ProgressiveGesture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector$SimpleOnSidewaysShoveGestureListener;,
        Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector$OnSidewaysShoveGestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/maplibre/android/gestures/ProgressiveGesture<",
        "Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector$OnSidewaysShoveGestureListener;",
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
.field deltaPixelSinceLast:F

.field deltaPixelsSinceStart:F

.field private maxShoveAngle:F

.field private pixelDeltaThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->handledTypes:Ljava/util/Set;

    const/16 v1, 0xe

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

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->calculateDeltaPixelsSinceLast()F

    move-result v0

    iput v0, p0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->deltaPixelSinceLast:F

    iget v1, p0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->deltaPixelsSinceStart:F

    add-float/2addr v1, v0

    iput v1, p0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->deltaPixelsSinceStart:F

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->deltaPixelSinceLast:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    check-cast v1, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector$OnSidewaysShoveGestureListener;

    iget v2, p0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->deltaPixelsSinceStart:F

    invoke-interface {v1, p0, v0, v2}, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector$OnSidewaysShoveGestureListener;->onSidewaysShove(Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;FF)Z

    move-result p0

    return p0

    :cond_0
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->canExecute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector$OnSidewaysShoveGestureListener;

    invoke-interface {v0, p0}, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector$OnSidewaysShoveGestureListener;->onSidewaysShoveBegin(Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->gestureStarted()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public calculateDeltaPixelsSinceLast()F
    .locals 7

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v2

    iget-object v4, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v4

    iget-object v6, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v4

    iget-object p0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v4, p0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    add-float/2addr p0, v2

    div-float/2addr p0, v0

    sub-float/2addr p0, v1

    return p0
.end method

.method public canExecute(I)Z
    .locals 2

    iget v0, p0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->deltaPixelsSinceStart:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->pixelDeltaThreshold:F

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
    .locals 3

    invoke-super {p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->gestureStopped()V

    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector$OnSidewaysShoveGestureListener;

    iget v1, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->velocityX:F

    iget v2, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->velocityY:F

    invoke-interface {v0, p0, v1, v2}, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector$OnSidewaysShoveGestureListener;->onSidewaysShoveEnd(Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;FF)V

    return-void
.end method

.method public getDeltaPixelSinceLast()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->deltaPixelSinceLast:F

    return p0
.end method

.method public getDeltaPixelsSinceStart()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->deltaPixelsSinceStart:F

    return p0
.end method

.method public getMaxShoveAngle()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->maxShoveAngle:F

    return p0
.end method

.method public getPixelDeltaThreshold()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->pixelDeltaThreshold:F

    return p0
.end method

.method public isAngleAcceptable()Z
    .locals 8

    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointersDistanceMap:Ljava/util/HashMap;

    new-instance v1, Lorg/maplibre/android/gestures/PointerDistancePair;

    iget-object v2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {v1, v2, v4}, Lorg/maplibre/android/gestures/PointerDistancePair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->getCurrFingersDiffY()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->getCurrFingersDiffX()F

    move-result v0

    float-to-double v6, v0

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide v6, 0x4056800000000000L    # 90.0

    sub-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget p0, p0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->maxShoveAngle:F

    float-to-double v6, p0

    cmpg-double p0, v0, v6

    if-gtz p0, :cond_0

    return v5

    :cond_0
    return v3
.end method

.method public isSloppyGesture()Z
    .locals 1

    invoke-super {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->isSloppyGesture()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->isAngleAcceptable()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
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

    sget-object p0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->handledTypes:Ljava/util/Set;

    return-object p0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->deltaPixelsSinceStart:F

    return-void
.end method

.method public setMaxShoveAngle(F)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->maxShoveAngle:F

    return-void
.end method

.method public setPixelDeltaThreshold(F)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->pixelDeltaThreshold:F

    return-void
.end method

.method public setPixelDeltaThresholdResource(I)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->setPixelDeltaThreshold(F)V

    return-void
.end method
