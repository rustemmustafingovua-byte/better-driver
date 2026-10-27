.class public final Lio/sentry/android/core/internal/gestures/SentryGestureDetector;
.super Ljava/lang/Object;
.source "SentryGestureDetector.java"


# instance fields
.field private currentDownEvent:Landroid/view/MotionEvent;

.field private downX:F

.field private downY:F

.field private ignoreUpEvent:Z

.field private isInTapRegion:Z

.field private lastX:F

.field private lastY:F

.field private final listener:Landroid/view/GestureDetector$OnGestureListener;

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final maximumFlingVelocity:I

.field private final minimumFlingVelocity:I

.field private final touchSlopSquare:I

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 44
    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->listener:Landroid/view/GestureDetector$OnGestureListener;

    .line 45
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 46
    .local v0, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 47
    .local v1, "touchSlop":I
    mul-int v2, v1, v1

    iput v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->touchSlopSquare:I

    .line 48
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->minimumFlingVelocity:I

    .line 49
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->maximumFlingVelocity:I

    .line 50
    return-void
.end method


# virtual methods
.method onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 53
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 54
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 56
    .local v1, "action":I
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    .line 57
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    .line 59
    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 61
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 102
    :pswitch_1
    iput-boolean v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->isInTapRegion:Z

    .line 103
    iput-boolean v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->ignoreUpEvent:Z

    .line 104
    goto/16 :goto_1

    .line 128
    :pswitch_2
    invoke-virtual {p0}, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->recycle()V

    goto/16 :goto_1

    .line 80
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 81
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 82
    .local v4, "y":F
    iget v5, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->downX:F

    sub-float v5, v2, v5

    .line 83
    .local v5, "dx":F
    iget v6, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->downY:F

    sub-float v6, v4, v6

    .line 84
    .local v6, "dy":F
    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    .line 86
    .local v7, "distanceSquare":F
    iget v8, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->touchSlopSquare:I

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_6

    .line 87
    iget v8, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->lastX:F

    sub-float/2addr v8, v2

    .line 88
    .local v8, "scrollX":F
    iget v9, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->lastY:F

    sub-float/2addr v9, v4

    .line 89
    .local v9, "scrollY":F
    iget-object v10, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->listener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v11, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->currentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v10, v11, p1, v8, v9}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 90
    iput-boolean v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->isInTapRegion:Z

    .line 91
    iput v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->lastX:F

    .line 92
    iput v4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->lastY:F

    .line 93
    .end local v8    # "scrollX":F
    .end local v9    # "scrollY":F
    goto/16 :goto_1

    .line 107
    .end local v2    # "x":F
    .end local v4    # "y":F
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v7    # "distanceSquare":F
    :pswitch_4
    iget-boolean v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->ignoreUpEvent:Z

    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {p0}, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->recycle()V

    .line 109
    goto :goto_1

    .line 111
    :cond_1
    iget-boolean v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->isInTapRegion:Z

    if-eqz v2, :cond_2

    .line 112
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->listener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 115
    .local v2, "pointerId":I
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->maximumFlingVelocity:I

    int-to-float v4, v4

    const/16 v5, 0x3e8

    invoke-virtual {v3, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 116
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    .line 117
    .local v3, "velocityX":F
    iget-object v4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    .line 119
    .local v4, "velocityY":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->minimumFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_3

    .line 120
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->minimumFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 121
    :cond_3
    iget-object v5, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->listener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v6, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->currentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v5, v6, p1, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 124
    .end local v2    # "pointerId":I
    .end local v3    # "velocityX":F
    .end local v4    # "velocityY":F
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->recycle()V

    .line 125
    goto :goto_1

    .line 63
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->downX:F

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->downY:F

    .line 65
    iget v4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->downX:F

    iput v4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->lastX:F

    .line 66
    iget v4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->downY:F

    iput v4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->lastY:F

    .line 67
    iput-boolean v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->isInTapRegion:Z

    .line 68
    iput-boolean v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->ignoreUpEvent:Z

    .line 70
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->currentDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_5

    .line 71
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->currentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 73
    :cond_5
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->currentDownEvent:Landroid/view/MotionEvent;

    .line 75
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->listener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    nop

    .line 131
    .end local v1    # "action":I
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 132
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_7
    return-void

    .line 53
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_8

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method recycle()V
    .locals 4

    .line 137
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 138
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->currentDownEvent:Landroid/view/MotionEvent;

    .line 139
    .local v1, "capturedDownEvent":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    iput-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->currentDownEvent:Landroid/view/MotionEvent;

    .line 140
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    .line 141
    .local v3, "capturedVelocityTracker":Landroid/view/VelocityTracker;
    iput-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 143
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 146
    :cond_1
    if-eqz v3, :cond_2

    .line 147
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 149
    :cond_2
    return-void

    .line 137
    .end local v1    # "capturedDownEvent":Landroid/view/MotionEvent;
    .end local v3    # "capturedVelocityTracker":Landroid/view/VelocityTracker;
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
.end method
