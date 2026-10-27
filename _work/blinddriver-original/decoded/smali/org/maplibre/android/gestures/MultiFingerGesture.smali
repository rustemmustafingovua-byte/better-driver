.class public abstract Lorg/maplibre/android/gestures/MultiFingerGesture;
.super Lorg/maplibre/android/gestures/BaseGesture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lorg/maplibre/android/gestures/BaseGesture<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUIRED_FINGERS_COUNT:I = 0x2

.field private static final PRESSURE_THRESHOLD:F = 0.67f


# instance fields
.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private final edgeSlop:F

.field private focalPoint:Landroid/graphics/PointF;

.field private final permittedActionsGuard:Lorg/maplibre/android/gestures/PermittedActionsGuard;

.field final pointerIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final pointersDistanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/maplibre/android/gestures/PointerDistancePair;",
            "Lorg/maplibre/android/gestures/MultiFingerDistancesObject;",
            ">;"
        }
    .end annotation
.end field

.field private spanThreshold:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/gestures/AndroidGesturesManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/gestures/BaseGesture;-><init>(Landroid/content/Context;Lorg/maplibre/android/gestures/AndroidGesturesManager;)V

    new-instance p2, Lorg/maplibre/android/gestures/PermittedActionsGuard;

    invoke-direct {p2}, Lorg/maplibre/android/gestures/PermittedActionsGuard;-><init>()V

    iput-object p2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->permittedActionsGuard:Lorg/maplibre/android/gestures/PermittedActionsGuard;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointersDistanceMap:Ljava/util/HashMap;

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->focalPoint:Landroid/graphics/PointF;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->edgeSlop:F

    invoke-direct {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->queryDisplayMetrics()V

    return-void
.end method

.method private calculateDistances()V
    .locals 13

    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointersDistanceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_1
    iget-object v3, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v9

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v10

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sub-float/2addr v9, v7

    sub-float/2addr v10, v8

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v11

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    invoke-virtual {v11, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v8, v7

    sub-float/2addr v6, v4

    iget-object v4, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointersDistanceMap:Ljava/util/HashMap;

    new-instance v7, Lorg/maplibre/android/gestures/PointerDistancePair;

    invoke-direct {v7, v3, v5}, Lorg/maplibre/android/gestures/PointerDistancePair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    new-instance v3, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;

    invoke-direct {v3, v9, v10, v8, v6}, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;-><init>(FFFF)V

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_0
    move v0, v1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private checkSpanBelowThreshold()Z
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointersDistanceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;

    invoke-virtual {v1}, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->getCurrFingersDiffXY()F

    move-result v1

    iget v2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->spanThreshold:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isMissingPointers(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private queryDisplayMetrics()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->displayMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object p0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->displayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private updatePointerList(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_3
    :goto_1
    iget-object p0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private verifyPointers(II)Z
    .locals 1

    if-eq p1, p2, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->getPointersCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->getPointersCount()I

    move-result p0

    if-ge p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public analyzeEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->queryDisplayMetrics()V

    :cond_0
    iget-object v1, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->permittedActionsGuard:Lorg/maplibre/android/gestures/PermittedActionsGuard;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    iget-object v3, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lorg/maplibre/android/gestures/PermittedActionsGuard;->isMissingActions(III)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_2

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1}, Lorg/maplibre/android/gestures/MultiFingerGesture;->isMissingPointers(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    instance-of v4, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;

    if-eqz v4, :cond_3

    move-object v4, p0

    check-cast v4, Lorg/maplibre/android/gestures/ProgressiveGesture;

    invoke-virtual {v4}, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lorg/maplibre/android/gestures/ProgressiveGesture;->gestureStopped()V

    :cond_3
    iget-object v4, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointersDistanceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    :cond_4
    if-eqz v1, :cond_5

    if-nez v0, :cond_6

    :cond_5
    invoke-direct {p0, p1}, Lorg/maplibre/android/gestures/MultiFingerGesture;->updatePointerList(Landroid/view/MotionEvent;)V

    :cond_6
    invoke-static {p1}, Lorg/maplibre/android/gestures/Utils;->determineFocalPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->focalPoint:Landroid/graphics/PointF;

    if-eqz v1, :cond_7

    const-string p0, "MultiFingerGesture"

    const-string p1, "Some MotionEvents were not passed to the library or events from different view trees are merged."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_7
    if-ne v0, v2, :cond_8

    iget-object p1, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->getRequiredPointersCount()I

    move-result v0

    if-lt p1, v0, :cond_8

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->checkPressure()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->calculateDistances()V

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->isSloppyGesture()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->analyzeMovement()Z

    move-result p0

    return p0

    :cond_8
    return v3
.end method

.method public analyzeMovement()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canExecute(I)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/maplibre/android/gestures/BaseGesture;->canExecute(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->isSloppyGesture()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public checkPressure()Z
    .locals 1

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPressure()F

    move-result p0

    div-float/2addr v0, p0

    const p0, 0x3f2b851f    # 0.67f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentSpan(II)F
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/gestures/MultiFingerGesture;->verifyPointers(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointersDistanceMap:Ljava/util/HashMap;

    new-instance v1, Lorg/maplibre/android/gestures/PointerDistancePair;

    iget-object v2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-direct {v1, p1, p0}, Lorg/maplibre/android/gestures/PointerDistancePair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->getCurrFingersDiffXY()F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "There is no such pair of pointers!"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurrentSpanX(II)F
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/gestures/MultiFingerGesture;->verifyPointers(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointersDistanceMap:Ljava/util/HashMap;

    new-instance v1, Lorg/maplibre/android/gestures/PointerDistancePair;

    iget-object v2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-direct {v1, p1, p0}, Lorg/maplibre/android/gestures/PointerDistancePair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->getCurrFingersDiffX()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "There is no such pair of pointers!"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurrentSpanY(II)F
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/gestures/MultiFingerGesture;->verifyPointers(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointersDistanceMap:Ljava/util/HashMap;

    new-instance v1, Lorg/maplibre/android/gestures/PointerDistancePair;

    iget-object v2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-direct {v1, p1, p0}, Lorg/maplibre/android/gestures/PointerDistancePair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->getCurrFingersDiffY()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "There is no such pair of pointers!"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFocalPoint()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->focalPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getPointersCount()I
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getPreviousSpan(II)F
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/gestures/MultiFingerGesture;->verifyPointers(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointersDistanceMap:Ljava/util/HashMap;

    new-instance v1, Lorg/maplibre/android/gestures/PointerDistancePair;

    iget-object v2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-direct {v1, p1, p0}, Lorg/maplibre/android/gestures/PointerDistancePair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->getPrevFingersDiffXY()F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "There is no such pair of pointers!"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPreviousSpanX(II)F
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/gestures/MultiFingerGesture;->verifyPointers(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointersDistanceMap:Ljava/util/HashMap;

    new-instance v1, Lorg/maplibre/android/gestures/PointerDistancePair;

    iget-object v2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-direct {v1, p1, p0}, Lorg/maplibre/android/gestures/PointerDistancePair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->getPrevFingersDiffX()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "There is no such pair of pointers!"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPreviousSpanY(II)F
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/gestures/MultiFingerGesture;->verifyPointers(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointersDistanceMap:Ljava/util/HashMap;

    new-instance v1, Lorg/maplibre/android/gestures/PointerDistancePair;

    iget-object v2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-direct {v1, p1, p0}, Lorg/maplibre/android/gestures/PointerDistancePair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->getPrevFingersDiffY()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "There is no such pair of pointers!"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRequiredPointersCount()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getSpanThreshold()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->spanThreshold:F

    return p0
.end method

.method public isSloppyGesture()Z
    .locals 7

    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->edgeSlop:F

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    iget-object v3, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/maplibre/android/gestures/Utils;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v6

    invoke-static {v6, v4}, Lorg/maplibre/android/gestures/Utils;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v4

    cmpg-float v6, v5, v2

    if-ltz v6, :cond_1

    cmpg-float v6, v4, v2

    if-ltz v6, :cond_1

    cmpl-float v5, v5, v1

    if-gtz v5, :cond_1

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-direct {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->checkSpanBelowThreshold()Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setSpanThreshold(F)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->spanThreshold:F

    return-void
.end method

.method public setSpanThresholdResource(I)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/gestures/MultiFingerGesture;->setSpanThreshold(F)V

    return-void
.end method
