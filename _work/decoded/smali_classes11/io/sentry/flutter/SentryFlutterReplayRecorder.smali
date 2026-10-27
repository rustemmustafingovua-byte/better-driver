.class public final Lio/sentry/flutter/SentryFlutterReplayRecorder;
.super Ljava/lang/Object;
.source "SentryFlutterReplayRecorder.kt"

# interfaces
.implements Lio/sentry/android/replay/Recorder;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\tH\u0016J\u0008\u0010\u000f\u001a\u00020\tH\u0016J\u0008\u0010\u0010\u001a\u00020\tH\u0016J\u0008\u0010\u0011\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/sentry/flutter/SentryFlutterReplayRecorder;",
        "Lio/sentry/android/replay/Recorder;",
        "callbacks",
        "Lio/sentry/flutter/ReplayRecorderCallbacks;",
        "integration",
        "Lio/sentry/android/replay/ReplayIntegration;",
        "<init>",
        "(Lio/sentry/flutter/ReplayRecorderCallbacks;Lio/sentry/android/replay/ReplayIntegration;)V",
        "start",
        "",
        "resume",
        "onConfigurationChanged",
        "config",
        "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "reset",
        "pause",
        "stop",
        "close",
        "sentry_flutter_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final callbacks:Lio/sentry/flutter/ReplayRecorderCallbacks;

.field private final integration:Lio/sentry/android/replay/ReplayIntegration;


# direct methods
.method public static synthetic $r8$lambda$QmXJIqyGQBXrWw4hjmgA9f2bwBc(Lkotlin/jvm/internal/Ref$BooleanRef;Lio/sentry/IScope;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/flutter/SentryFlutterReplayRecorder;->start$lambda$0$0(Lkotlin/jvm/internal/Ref$BooleanRef;Lio/sentry/IScope;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yfk-gn5D3gpUFDX3GdSAkf2tbCY(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/flutter/SentryFlutterReplayRecorder;->start$lambda$0(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YwVCjWkzUr_BtYEI_60pYMj4QVU(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/flutter/SentryFlutterReplayRecorder;->stop$lambda$0(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_8zsQiM-i7H-7KvRkyX36xCIwck(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/flutter/SentryFlutterReplayRecorder;->resume$lambda$0(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lMnHnhAl_zAHt4VHdudGMwkZHjA(Lio/sentry/flutter/SentryFlutterReplayRecorder;Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/flutter/SentryFlutterReplayRecorder;->onConfigurationChanged$lambda$0(Lio/sentry/flutter/SentryFlutterReplayRecorder;Lio/sentry/android/replay/ScreenshotRecorderConfig;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qgAQRa79sgxEh9i8RVyMeqpEfAQ(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/flutter/SentryFlutterReplayRecorder;->pause$lambda$0(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xRph2Z6t7uxeZOIeuMVMjsJ6HOo(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/flutter/SentryFlutterReplayRecorder;->reset$lambda$0(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/flutter/ReplayRecorderCallbacks;Lio/sentry/android/replay/ReplayIntegration;)V
    .locals 1
    .param p1, "callbacks"    # Lio/sentry/flutter/ReplayRecorderCallbacks;
    .param p2, "integration"    # Lio/sentry/android/replay/ReplayIntegration;

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "integration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder;->callbacks:Lio/sentry/flutter/ReplayRecorderCallbacks;

    .line 14
    iput-object p2, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder;->integration:Lio/sentry/android/replay/ReplayIntegration;

    .line 12
    return-void
.end method

.method private static final onConfigurationChanged$lambda$0(Lio/sentry/flutter/SentryFlutterReplayRecorder;Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 4
    .param p0, "this$0"    # Lio/sentry/flutter/SentryFlutterReplayRecorder;
    .param p1, "$config"    # Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 44
    nop

    .line 45
    :try_start_0
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder;->callbacks:Lio/sentry/flutter/ReplayRecorderCallbacks;

    .line 46
    invoke-virtual {p1}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingWidth()I

    move-result v1

    .line 47
    invoke-virtual {p1}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingHeight()I

    move-result v2

    .line 48
    invoke-virtual {p1}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getFrameRate()I

    move-result v3

    .line 45
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/flutter/ReplayRecorderCallbacks;->replayConfigChanged(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "ignored":Ljava/lang/Exception;
    const-string v1, "Failed to propagate configuration change to Flutter"

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "Sentry"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .end local v0    # "ignored":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static final pause$lambda$0(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V
    .locals 4
    .param p0, "this$0"    # Lio/sentry/flutter/SentryFlutterReplayRecorder;

    .line 68
    nop

    .line 69
    :try_start_0
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder;->callbacks:Lio/sentry/flutter/ReplayRecorderCallbacks;

    invoke-interface {v0}, Lio/sentry/flutter/ReplayRecorderCallbacks;->replayPaused()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "ignored":Ljava/lang/Exception;
    const-string v1, "Failed to pause replay recorder"

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "Sentry"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .end local v0    # "ignored":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static final reset$lambda$0(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V
    .locals 4
    .param p0, "this$0"    # Lio/sentry/flutter/SentryFlutterReplayRecorder;

    .line 58
    nop

    .line 59
    :try_start_0
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder;->callbacks:Lio/sentry/flutter/ReplayRecorderCallbacks;

    invoke-interface {v0}, Lio/sentry/flutter/ReplayRecorderCallbacks;->replayReset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "ignored":Ljava/lang/Exception;
    const-string v1, "Failed to reset replay recorder"

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "Sentry"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .end local v0    # "ignored":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static final resume$lambda$0(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V
    .locals 4
    .param p0, "this$0"    # Lio/sentry/flutter/SentryFlutterReplayRecorder;

    .line 34
    nop

    .line 35
    :try_start_0
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder;->callbacks:Lio/sentry/flutter/ReplayRecorderCallbacks;

    invoke-interface {v0}, Lio/sentry/flutter/ReplayRecorderCallbacks;->replayResumed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "ignored":Ljava/lang/Exception;
    const-string v1, "Failed to resume replay recorder"

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "Sentry"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .end local v0    # "ignored":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static final start$lambda$0(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V
    .locals 4
    .param p0, "this$0"    # Lio/sentry/flutter/SentryFlutterReplayRecorder;

    .line 18
    nop

    .line 19
    :try_start_0
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder;->integration:Lio/sentry/android/replay/ReplayIntegration;

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .local v0, "replayId":Ljava/lang/String;
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 21
    .local v1, "replayIsBuffering":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v2, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-static {v2}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 25
    iget-object v2, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder;->callbacks:Lio/sentry/flutter/ReplayRecorderCallbacks;

    iget-boolean v3, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-interface {v2, v0, v3}, Lio/sentry/flutter/ReplayRecorderCallbacks;->replayStarted(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "replayId":Ljava/lang/String;
    .end local v1    # "replayIsBuffering":Lkotlin/jvm/internal/Ref$BooleanRef;
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "ignored":Ljava/lang/Exception;
    const-string v1, "Failed to start replay recorder"

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "Sentry"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .end local v0    # "ignored":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static final start$lambda$0$0(Lkotlin/jvm/internal/Ref$BooleanRef;Lio/sentry/IScope;)V
    .locals 2
    .param p0, "$replayIsBuffering"    # Lkotlin/jvm/internal/Ref$BooleanRef;
    .param p1, "scope"    # Lio/sentry/IScope;

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p1}, Lio/sentry/IScope;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 24
    return-void
.end method

.method private static final stop$lambda$0(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V
    .locals 4
    .param p0, "this$0"    # Lio/sentry/flutter/SentryFlutterReplayRecorder;

    .line 78
    nop

    .line 79
    :try_start_0
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder;->callbacks:Lio/sentry/flutter/ReplayRecorderCallbacks;

    invoke-interface {v0}, Lio/sentry/flutter/ReplayRecorderCallbacks;->replayStopped()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "ignored":Ljava/lang/Exception;
    const-string v1, "Failed to stop replay recorder"

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "Sentry"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v0    # "ignored":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lio/sentry/flutter/SentryFlutterReplayRecorder;->stop()V

    .line 88
    return-void
.end method

.method public onConfigurationChanged(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 2
    .param p1, "config"    # Lio/sentry/android/replay/ScreenshotRecorderConfig;

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda6;-><init>(Lio/sentry/flutter/SentryFlutterReplayRecorder;Lio/sentry/android/replay/ScreenshotRecorderConfig;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

.method public pause()V
    .locals 2

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda1;-><init>(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method

.method public reset()V
    .locals 2

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda5;-><init>(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    return-void
.end method

.method public resume()V
    .locals 2

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda3;-><init>(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method

.method public start()V
    .locals 2

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda0;-><init>(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    return-void
.end method

.method public stop()V
    .locals 2

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda2;-><init>(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method
