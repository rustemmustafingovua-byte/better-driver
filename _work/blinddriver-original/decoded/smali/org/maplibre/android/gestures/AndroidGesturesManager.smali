.class public Lorg/maplibre/android/gestures/AndroidGesturesManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/gestures/AndroidGesturesManager$GestureType;
    }
.end annotation


# static fields
.field public static final GESTURE_TYPE_DOUBLE_TAP:I = 0xa

.field public static final GESTURE_TYPE_DOUBLE_TAP_EVENT:I = 0xb

.field public static final GESTURE_TYPE_DOWN:I = 0x9

.field public static final GESTURE_TYPE_FLING:I = 0x7

.field public static final GESTURE_TYPE_LONG_PRESS:I = 0x6

.field public static final GESTURE_TYPE_MOVE:I = 0xd

.field public static final GESTURE_TYPE_MULTI_FINGER_TAP:I = 0x4

.field public static final GESTURE_TYPE_QUICK_SCALE:I = 0xf

.field public static final GESTURE_TYPE_ROTATE:I = 0x2

.field public static final GESTURE_TYPE_SCALE:I = 0x1

.field public static final GESTURE_TYPE_SCROLL:I = 0x0

.field public static final GESTURE_TYPE_SHOVE:I = 0x3

.field public static final GESTURE_TYPE_SHOW_PRESS:I = 0x8

.field public static final GESTURE_TYPE_SIDEWAYS_SHOVE:I = 0xe

.field public static final GESTURE_TYPE_SINGLE_TAP_CONFIRMED:I = 0xc

.field public static final GESTURE_TYPE_SINGLE_TAP_UP:I = 0x5


# instance fields
.field private final detectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/maplibre/android/gestures/BaseGesture;",
            ">;"
        }
    .end annotation
.end field

.field private final moveGestureDetector:Lorg/maplibre/android/gestures/MoveGestureDetector;

.field private final multiFingerTapGestureDetector:Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;

.field private final mutuallyExclusiveGestures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rotateGestureDetector:Lorg/maplibre/android/gestures/RotateGestureDetector;

.field private final shoveGestureDetector:Lorg/maplibre/android/gestures/ShoveGestureDetector;

.field private final sidewaysShoveGestureDetector:Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;

.field private final standardGestureDetector:Lorg/maplibre/android/gestures/StandardGestureDetector;

.field private final standardScaleGestureDetector:Lorg/maplibre/android/gestures/StandardScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;Z)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->mutuallyExclusiveGestures:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->detectors:Ljava/util/List;

    .line 7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    new-instance p2, Lorg/maplibre/android/gestures/RotateGestureDetector;

    invoke-direct {p2, p1, p0}, Lorg/maplibre/android/gestures/RotateGestureDetector;-><init>(Landroid/content/Context;Lorg/maplibre/android/gestures/AndroidGesturesManager;)V

    iput-object p2, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->rotateGestureDetector:Lorg/maplibre/android/gestures/RotateGestureDetector;

    .line 9
    new-instance v0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;-><init>(Landroid/content/Context;Lorg/maplibre/android/gestures/AndroidGesturesManager;)V

    iput-object v0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->standardScaleGestureDetector:Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    .line 10
    new-instance v2, Lorg/maplibre/android/gestures/ShoveGestureDetector;

    invoke-direct {v2, p1, p0}, Lorg/maplibre/android/gestures/ShoveGestureDetector;-><init>(Landroid/content/Context;Lorg/maplibre/android/gestures/AndroidGesturesManager;)V

    iput-object v2, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->shoveGestureDetector:Lorg/maplibre/android/gestures/ShoveGestureDetector;

    .line 11
    new-instance v3, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;

    invoke-direct {v3, p1, p0}, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;-><init>(Landroid/content/Context;Lorg/maplibre/android/gestures/AndroidGesturesManager;)V

    iput-object v3, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->sidewaysShoveGestureDetector:Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;

    .line 12
    new-instance v4, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;

    invoke-direct {v4, p1, p0}, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;-><init>(Landroid/content/Context;Lorg/maplibre/android/gestures/AndroidGesturesManager;)V

    iput-object v4, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->multiFingerTapGestureDetector:Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;

    .line 13
    new-instance v5, Lorg/maplibre/android/gestures/MoveGestureDetector;

    invoke-direct {v5, p1, p0}, Lorg/maplibre/android/gestures/MoveGestureDetector;-><init>(Landroid/content/Context;Lorg/maplibre/android/gestures/AndroidGesturesManager;)V

    iput-object v5, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->moveGestureDetector:Lorg/maplibre/android/gestures/MoveGestureDetector;

    .line 14
    new-instance v6, Lorg/maplibre/android/gestures/StandardGestureDetector;

    invoke-direct {v6, p1, p0}, Lorg/maplibre/android/gestures/StandardGestureDetector;-><init>(Landroid/content/Context;Lorg/maplibre/android/gestures/AndroidGesturesManager;)V

    iput-object v6, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->standardGestureDetector:Lorg/maplibre/android/gestures/StandardGestureDetector;

    .line 15
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 22
    invoke-direct {p0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->initDefaultThresholds()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/maplibre/android/gestures/AndroidGesturesManager;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;[Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 3
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method

.method private initDefaultThresholds()V
    .locals 4

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->detectors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/gestures/BaseGesture;

    instance-of v1, v0, Lorg/maplibre/android/gestures/MultiFingerGesture;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/maplibre/android/gestures/MultiFingerGesture;

    sget v2, Lorg/maplibre/android/gestures/R$dimen;->mapbox_internalMinSpan24:I

    invoke-virtual {v1, v2}, Lorg/maplibre/android/gestures/MultiFingerGesture;->setSpanThresholdResource(I)V

    :cond_1
    instance-of v1, v0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    sget v2, Lorg/maplibre/android/gestures/R$dimen;->mapbox_defaultScaleSpanSinceStartThreshold:I

    invoke-virtual {v1, v2}, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->setSpanSinceStartThresholdResource(I)V

    :cond_2
    instance-of v1, v0, Lorg/maplibre/android/gestures/ShoveGestureDetector;

    const/high16 v2, 0x41a00000    # 20.0f

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lorg/maplibre/android/gestures/ShoveGestureDetector;

    sget v3, Lorg/maplibre/android/gestures/R$dimen;->mapbox_defaultShovePixelThreshold:I

    invoke-virtual {v1, v3}, Lorg/maplibre/android/gestures/ShoveGestureDetector;->setPixelDeltaThresholdResource(I)V

    invoke-virtual {v1, v2}, Lorg/maplibre/android/gestures/ShoveGestureDetector;->setMaxShoveAngle(F)V

    :cond_3
    instance-of v1, v0, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;

    sget v3, Lorg/maplibre/android/gestures/R$dimen;->mapbox_defaultShovePixelThreshold:I

    invoke-virtual {v1, v3}, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->setPixelDeltaThresholdResource(I)V

    invoke-virtual {v1, v2}, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->setMaxShoveAngle(F)V

    :cond_4
    instance-of v1, v0, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;

    sget v2, Lorg/maplibre/android/gestures/R$dimen;->mapbox_defaultMultiTapMovementThreshold:I

    invoke-virtual {v1, v2}, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->setMultiFingerTapMovementThresholdResource(I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->setMultiFingerTapTimeThreshold(J)V

    :cond_5
    instance-of v1, v0, Lorg/maplibre/android/gestures/RotateGestureDetector;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/maplibre/android/gestures/RotateGestureDetector;

    const v1, 0x4174cccd    # 15.3f

    invoke-virtual {v0, v1}, Lorg/maplibre/android/gestures/RotateGestureDetector;->setAngleThreshold(F)V

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public getDetectors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/maplibre/android/gestures/BaseGesture;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->detectors:Ljava/util/List;

    return-object p0
.end method

.method public getMoveGestureDetector()Lorg/maplibre/android/gestures/MoveGestureDetector;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->moveGestureDetector:Lorg/maplibre/android/gestures/MoveGestureDetector;

    return-object p0
.end method

.method public getMultiFingerTapGestureDetector()Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->multiFingerTapGestureDetector:Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;

    return-object p0
.end method

.method public getMutuallyExclusiveGestures()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->mutuallyExclusiveGestures:Ljava/util/List;

    return-object p0
.end method

.method public getRotateGestureDetector()Lorg/maplibre/android/gestures/RotateGestureDetector;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->rotateGestureDetector:Lorg/maplibre/android/gestures/RotateGestureDetector;

    return-object p0
.end method

.method public getShoveGestureDetector()Lorg/maplibre/android/gestures/ShoveGestureDetector;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->shoveGestureDetector:Lorg/maplibre/android/gestures/ShoveGestureDetector;

    return-object p0
.end method

.method public getSidewaysShoveGestureDetector()Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->sidewaysShoveGestureDetector:Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;

    return-object p0
.end method

.method public getStandardGestureDetector()Lorg/maplibre/android/gestures/StandardGestureDetector;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->standardGestureDetector:Lorg/maplibre/android/gestures/StandardGestureDetector;

    return-object p0
.end method

.method public getStandardScaleGestureDetector()Lorg/maplibre/android/gestures/StandardScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->standardScaleGestureDetector:Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->detectors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/gestures/BaseGesture;

    invoke-virtual {v1, p1}, Lorg/maplibre/android/gestures/BaseGesture;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public removeMoveGestureListener()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->moveGestureDetector:Lorg/maplibre/android/gestures/MoveGestureDetector;

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->removeListener()V

    return-void
.end method

.method public removeMultiFingerTapGestureListener()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->multiFingerTapGestureDetector:Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->removeListener()V

    return-void
.end method

.method public removeRotateGestureListener()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->rotateGestureDetector:Lorg/maplibre/android/gestures/RotateGestureDetector;

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->removeListener()V

    return-void
.end method

.method public removeShoveGestureListener()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->shoveGestureDetector:Lorg/maplibre/android/gestures/ShoveGestureDetector;

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->removeListener()V

    return-void
.end method

.method public removeSidewaysShoveGestureListener()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->sidewaysShoveGestureDetector:Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->removeListener()V

    return-void
.end method

.method public removeStandardGestureListener()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->standardGestureDetector:Lorg/maplibre/android/gestures/StandardGestureDetector;

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->removeListener()V

    return-void
.end method

.method public removeStandardScaleGestureListener()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->standardScaleGestureDetector:Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    invoke-virtual {p0}, Lorg/maplibre/android/gestures/BaseGesture;->removeListener()V

    return-void
.end method

.method public setMoveGestureListener(Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->moveGestureDetector:Lorg/maplibre/android/gestures/MoveGestureDetector;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/gestures/BaseGesture;->setListener(Ljava/lang/Object;)V

    return-void
.end method

.method public setMultiFingerTapGestureListener(Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector$OnMultiFingerTapGestureListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->multiFingerTapGestureDetector:Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/gestures/BaseGesture;->setListener(Ljava/lang/Object;)V

    return-void
.end method

.method public setMutuallyExclusiveGestures(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->mutuallyExclusiveGestures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->mutuallyExclusiveGestures:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final varargs setMutuallyExclusiveGestures([Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->setMutuallyExclusiveGestures(Ljava/util/List;)V

    return-void
.end method

.method public setRotateGestureListener(Lorg/maplibre/android/gestures/RotateGestureDetector$OnRotateGestureListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->rotateGestureDetector:Lorg/maplibre/android/gestures/RotateGestureDetector;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/gestures/BaseGesture;->setListener(Ljava/lang/Object;)V

    return-void
.end method

.method public setShoveGestureListener(Lorg/maplibre/android/gestures/ShoveGestureDetector$OnShoveGestureListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->shoveGestureDetector:Lorg/maplibre/android/gestures/ShoveGestureDetector;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/gestures/BaseGesture;->setListener(Ljava/lang/Object;)V

    return-void
.end method

.method public setSidewaysShoveGestureListener(Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector$OnSidewaysShoveGestureListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->sidewaysShoveGestureDetector:Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/gestures/BaseGesture;->setListener(Ljava/lang/Object;)V

    return-void
.end method

.method public setStandardGestureListener(Lorg/maplibre/android/gestures/StandardGestureDetector$StandardOnGestureListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->standardGestureDetector:Lorg/maplibre/android/gestures/StandardGestureDetector;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/gestures/BaseGesture;->setListener(Ljava/lang/Object;)V

    return-void
.end method

.method public setStandardScaleGestureListener(Lorg/maplibre/android/gestures/StandardScaleGestureDetector$StandardOnScaleGestureListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/AndroidGesturesManager;->standardScaleGestureDetector:Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/gestures/BaseGesture;->setListener(Ljava/lang/Object;)V

    return-void
.end method
