.class final Lio/sentry/android/replay/WindowRecorder$Capturer;
.super Ljava/lang/Object;
.source "WindowRecorder.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/WindowRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Capturer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0016J\u0008\u0010\u0018\u001a\u00020\u0016H\u0016J\u0006\u0010\u0019\u001a\u00020\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/sentry/android/replay/WindowRecorder$Capturer;",
        "Ljava/lang/Runnable;",
        "options",
        "Lio/sentry/SentryOptions;",
        "mainLooperHandler",
        "Lio/sentry/android/replay/util/MainLooperHandler;",
        "(Lio/sentry/SentryOptions;Lio/sentry/android/replay/util/MainLooperHandler;)V",
        "config",
        "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "getConfig",
        "()Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "setConfig",
        "(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V",
        "isRecording",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "recorder",
        "Lio/sentry/android/replay/ScreenshotRecorder;",
        "getRecorder",
        "()Lio/sentry/android/replay/ScreenshotRecorder;",
        "setRecorder",
        "(Lio/sentry/android/replay/ScreenshotRecorder;)V",
        "pause",
        "",
        "resume",
        "run",
        "stop",
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


# instance fields
.field private config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

.field private final isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

.field private final options:Lio/sentry/SentryOptions;

.field private recorder:Lio/sentry/android/replay/ScreenshotRecorder;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/util/MainLooperHandler;)V
    .locals 2
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "mainLooperHandler"    # Lio/sentry/android/replay/util/MainLooperHandler;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainLooperHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->options:Lio/sentry/SentryOptions;

    .line 49
    iput-object p2, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    return-void
.end method


# virtual methods
.method public final getConfig()Lio/sentry/android/replay/ScreenshotRecorderConfig;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    return-object v0
.end method

.method public final getRecorder()Lio/sentry/android/replay/ScreenshotRecorder;
    .locals 1

    .line 52
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->recorder:Lio/sentry/android/replay/ScreenshotRecorder;

    return-object v0
.end method

.method public final pause()V
    .locals 2

    .line 74
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->recorder:Lio/sentry/android/replay/ScreenshotRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/android/replay/ScreenshotRecorder;->pause()V

    .line 75
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 76
    return-void
.end method

.method public final resume()V
    .locals 5

    .line 57
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->isDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Resuming the capture runnable."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->recorder:Lio/sentry/android/replay/ScreenshotRecorder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/sentry/android/replay/ScreenshotRecorder;->resume()V

    .line 61
    :cond_1
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 63
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    move-object v2, p0

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lio/sentry/android/replay/util/MainLooperHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    move-object v2, p0

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lio/sentry/android/replay/util/MainLooperHandler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    .line 65
    .local v0, "posted":Z
    if-nez v0, :cond_2

    .line 66
    iget-object v2, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    .line 67
    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 68
    new-array v1, v1, [Ljava/lang/Object;

    .line 66
    const-string v4, "Failed to post the capture runnable, main looper is not ready."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_2
    return-void
.end method

.method public run()V
    .locals 8

    .line 86
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Not capturing frames, recording is not running."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_0
    return-void

    .line 93
    :cond_1
    nop

    .line 94
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Capturing a frame."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_2
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->recorder:Lio/sentry/android/replay/ScreenshotRecorder;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lio/sentry/android/replay/ScreenshotRecorder;->capture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Failed to capture a frame"

    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->isDebug()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 103
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    .line 104
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Posting the capture runnable again, frame rate is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getFrameRate()I

    move-result v5

    goto :goto_1

    :cond_4
    move v5, v2

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fps."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    .line 103
    invoke-interface {v0, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_5
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    move-object v3, p0

    check-cast v3, Ljava/lang/Runnable;

    iget-object v4, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getFrameRate()I

    move-result v2

    :cond_6
    int-to-long v4, v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v6, v4

    invoke-virtual {v0, v3, v6, v7}, Lio/sentry/android/replay/util/MainLooperHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    .line 109
    .local v0, "posted":Z
    if-nez v0, :cond_7

    .line 110
    iget-object v2, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    .line 111
    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 112
    new-array v1, v1, [Ljava/lang/Object;

    .line 110
    const-string v4, "Failed to post the capture runnable, main looper is shutting down."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :cond_7
    return-void
.end method

.method public final setConfig(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 53
    iput-object p1, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    return-void
.end method

.method public final setRecorder(Lio/sentry/android/replay/ScreenshotRecorder;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/sentry/android/replay/ScreenshotRecorder;

    .line 52
    iput-object p1, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->recorder:Lio/sentry/android/replay/ScreenshotRecorder;

    return-void
.end method

.method public final stop()V
    .locals 2

    .line 79
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->recorder:Lio/sentry/android/replay/ScreenshotRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/android/replay/ScreenshotRecorder;->close()V

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->recorder:Lio/sentry/android/replay/ScreenshotRecorder;

    .line 81
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$Capturer;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 82
    return-void
.end method
