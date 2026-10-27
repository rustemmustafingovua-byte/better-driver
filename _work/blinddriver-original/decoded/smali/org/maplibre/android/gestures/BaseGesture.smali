.class public abstract Lorg/maplibre/android/gestures/BaseGesture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;

.field private currentEvent:Landroid/view/MotionEvent;

.field private gestureDuration:J

.field private final gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

.field private isEnabled:Z

.field protected listener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private previousEvent:Landroid/view/MotionEvent;

.field protected final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/gestures/AndroidGesturesManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->isEnabled:Z

    iput-object p1, p0, Lorg/maplibre/android/gestures/BaseGesture;->context:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lorg/maplibre/android/gestures/BaseGesture;->windowManager:Landroid/view/WindowManager;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/maplibre/android/gestures/BaseGesture;->windowManager:Landroid/view/WindowManager;

    :goto_0
    iput-object p2, p0, Lorg/maplibre/android/gestures/BaseGesture;->gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    return-void
.end method

.method private analyze(Landroid/view/MotionEvent;)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->previousEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lorg/maplibre/android/gestures/BaseGesture;->previousEvent:Landroid/view/MotionEvent;

    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->previousEvent:Landroid/view/MotionEvent;

    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object v2, p0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->gestureDuration:J

    invoke-virtual {p0, p1}, Lorg/maplibre/android/gestures/BaseGesture;->analyzeEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract analyzeEvent(Landroid/view/MotionEvent;)Z
.end method

.method public canExecute(I)Z
    .locals 7

    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->isEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getMutuallyExclusiveGestures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    iget-object v4, p0, Lorg/maplibre/android/gestures/BaseGesture;->gesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    invoke-virtual {v4}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getDetectors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/maplibre/android/gestures/BaseGesture;

    instance-of v6, v5, Lorg/maplibre/android/gestures/ProgressiveGesture;

    if-eqz v6, :cond_3

    check-cast v5, Lorg/maplibre/android/gestures/ProgressiveGesture;

    invoke-virtual {v5}, Lorg/maplibre/android/gestures/ProgressiveGesture;->getHandledTypes()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress()Z

    move-result v5

    if-eqz v5, :cond_3

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    return v1
.end method

.method public getCurrentEvent()Landroid/view/MotionEvent;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public getGestureDuration()J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->gestureDuration:J

    return-wide v0
.end method

.method public getPreviousEvent()Landroid/view/MotionEvent;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/BaseGesture;->previousEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/gestures/BaseGesture;->isEnabled:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/maplibre/android/gestures/BaseGesture;->analyze(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public removeListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/gestures/BaseGesture;->isEnabled:Z

    return-void
.end method

.method public setListener(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    return-void
.end method
