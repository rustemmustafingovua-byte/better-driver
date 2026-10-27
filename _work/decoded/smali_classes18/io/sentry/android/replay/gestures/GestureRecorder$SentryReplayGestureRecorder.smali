.class public final Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;
.super Lio/sentry/android/replay/util/FixedWindowCallback;
.source "GestureRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/gestures/GestureRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SentryReplayGestureRecorder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;",
        "Lio/sentry/android/replay/util/FixedWindowCallback;",
        "options",
        "Lio/sentry/SentryOptions;",
        "touchRecorderCallback",
        "Lio/sentry/android/replay/gestures/TouchRecorderCallback;",
        "delegate",
        "Landroid/view/Window$Callback;",
        "(Lio/sentry/SentryOptions;Lio/sentry/android/replay/gestures/TouchRecorderCallback;Landroid/view/Window$Callback;)V",
        "dispatchTouchEvent",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "inert",
        "",
        "sentry-android-replay_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final options:Lio/sentry/SentryOptions;

.field private volatile touchRecorderCallback:Lio/sentry/android/replay/gestures/TouchRecorderCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;->$stable:I

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/gestures/TouchRecorderCallback;Landroid/view/Window$Callback;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "touchRecorderCallback"    # Lio/sentry/android/replay/gestures/TouchRecorderCallback;
    .param p3, "delegate"    # Landroid/view/Window$Callback;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, p3}, Lio/sentry/android/replay/util/FixedWindowCallback;-><init>(Landroid/view/Window$Callback;)V

    .line 92
    iput-object p1, p0, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;->options:Lio/sentry/SentryOptions;

    .line 93
    iput-object p2, p0, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;->touchRecorderCallback:Lio/sentry/android/replay/gestures/TouchRecorderCallback;

    .line 91
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 97
    if-eqz p1, :cond_1

    .line 98
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const-string v1, "obtainNoHistory(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .local v0, "copy":Landroid/view/MotionEvent;
    nop

    .line 100
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;->touchRecorderCallback:Lio/sentry/android/replay/gestures/TouchRecorderCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lio/sentry/android/replay/gestures/TouchRecorderCallback;->onTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 105
    goto :goto_1

    .line 101
    :catchall_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v2, p0, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error dispatching touch event"

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 104
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    throw v1

    .line 107
    .end local v0    # "copy":Landroid/view/MotionEvent;
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lio/sentry/android/replay/util/FixedWindowCallback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final inert()V
    .locals 1

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;->touchRecorderCallback:Lio/sentry/android/replay/gestures/TouchRecorderCallback;

    .line 116
    return-void
.end method
