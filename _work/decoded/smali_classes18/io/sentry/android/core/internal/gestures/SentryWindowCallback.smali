.class public final Lio/sentry/android/core/internal/gestures/SentryWindowCallback;
.super Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;
.source "SentryWindowCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/internal/gestures/SentryWindowCallback$MotionEventObtainer;
    }
.end annotation


# instance fields
.field private final delegate:Landroid/view/Window$Callback;

.field private final gestureDetector:Lio/sentry/android/core/internal/gestures/SentryGestureDetector;

.field private final gestureListener:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

.field private volatile inert:Z

.field private final motionEventObtainer:Lio/sentry/android/core/internal/gestures/SentryWindowCallback$MotionEventObtainer;

.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Landroid/view/Window$Callback;Landroid/content/Context;Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/SentryOptions;)V
    .locals 6
    .param p1, "delegate"    # Landroid/view/Window$Callback;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "gestureListener"    # Lio/sentry/android/core/internal/gestures/SentryGestureListener;
    .param p4, "options"    # Lio/sentry/SentryOptions;

    .line 31
    new-instance v2, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;

    invoke-direct {v2, p2, p3}, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v5, Lio/sentry/android/core/internal/gestures/SentryWindowCallback$1;

    invoke-direct {v5}, Lio/sentry/android/core/internal/gestures/SentryWindowCallback$1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "delegate":Landroid/view/Window$Callback;
    .end local p3    # "gestureListener":Lio/sentry/android/core/internal/gestures/SentryGestureListener;
    .end local p4    # "options":Lio/sentry/SentryOptions;
    .local v1, "delegate":Landroid/view/Window$Callback;
    .local v3, "gestureListener":Lio/sentry/android/core/internal/gestures/SentryGestureListener;
    .local v4, "options":Lio/sentry/SentryOptions;
    invoke-direct/range {v0 .. v5}, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;-><init>(Landroid/view/Window$Callback;Lio/sentry/android/core/internal/gestures/SentryGestureDetector;Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/SentryOptions;Lio/sentry/android/core/internal/gestures/SentryWindowCallback$MotionEventObtainer;)V

    .line 37
    return-void
.end method

.method constructor <init>(Landroid/view/Window$Callback;Lio/sentry/android/core/internal/gestures/SentryGestureDetector;Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/SentryOptions;Lio/sentry/android/core/internal/gestures/SentryWindowCallback$MotionEventObtainer;)V
    .locals 0
    .param p1, "delegate"    # Landroid/view/Window$Callback;
    .param p2, "gestureDetector"    # Lio/sentry/android/core/internal/gestures/SentryGestureDetector;
    .param p3, "gestureListener"    # Lio/sentry/android/core/internal/gestures/SentryGestureListener;
    .param p4, "options"    # Lio/sentry/SentryOptions;
    .param p5, "motionEventObtainer"    # Lio/sentry/android/core/internal/gestures/SentryWindowCallback$MotionEventObtainer;

    .line 45
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;-><init>(Landroid/view/Window$Callback;)V

    .line 46
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->delegate:Landroid/view/Window$Callback;

    .line 47
    iput-object p3, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->gestureListener:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    .line 48
    iput-object p4, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->options:Lio/sentry/SentryOptions;

    .line 49
    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->gestureDetector:Lio/sentry/android/core/internal/gestures/SentryGestureDetector;

    .line 50
    iput-object p5, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->motionEventObtainer:Lio/sentry/android/core/internal/gestures/SentryWindowCallback$MotionEventObtainer;

    .line 51
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 71
    iget-boolean v0, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->inert:Z

    if-eqz v0, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->gestureDetector:Lio/sentry/android/core/internal/gestures/SentryGestureDetector;

    invoke-virtual {v0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 76
    .local v0, "action":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 77
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->gestureListener:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    invoke-virtual {v1, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->onUp(Landroid/view/MotionEvent;)V

    .line 79
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 55
    if-eqz p1, :cond_1

    .line 56
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->motionEventObtainer:Lio/sentry/android/core/internal/gestures/SentryWindowCallback$MotionEventObtainer;

    invoke-interface {v0, p1}, Lio/sentry/android/core/internal/gestures/SentryWindowCallback$MotionEventObtainer;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 58
    .local v0, "copy":Landroid/view/MotionEvent;
    :try_start_0
    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->handleTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 65
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->options:Lio/sentry/SentryOptions;

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error dispatching touch event"

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 64
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 65
    throw v1

    .line 67
    .end local v0    # "copy":Landroid/view/MotionEvent;
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getDelegate()Landroid/view/Window$Callback;
    .locals 1

    .line 88
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->delegate:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public stopTracking()V
    .locals 2

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->inert:Z

    .line 83
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->gestureListener:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    sget-object v1, Lio/sentry/SpanStatus;->CANCELLED:Lio/sentry/SpanStatus;

    invoke-virtual {v0, v1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->stopTracing(Lio/sentry/SpanStatus;)V

    .line 84
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->gestureDetector:Lio/sentry/android/core/internal/gestures/SentryGestureDetector;

    invoke-virtual {v0}, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->recycle()V

    .line 85
    return-void
.end method
