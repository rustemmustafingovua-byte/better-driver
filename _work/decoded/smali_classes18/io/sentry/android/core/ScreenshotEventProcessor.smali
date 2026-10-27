.class public final Lio/sentry/android/core/ScreenshotEventProcessor;
.super Ljava/lang/Object;
.source "ScreenshotEventProcessor.java"

# interfaces
.implements Lio/sentry/internal/eventprocessor/SentryEventProcessor;


# static fields
.field private static final DEBOUNCE_MAX_EXECUTIONS:I = 0x3

.field private static final DEBOUNCE_WAIT_TIME_MS:J = 0x7d0L


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final debouncer:Lio/sentry/android/core/internal/util/Debouncer;

.field private final isReplayAvailable:Z

.field private final isReplayModuleAbsenceLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Z)V
    .locals 5
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p3, "isReplayAvailable"    # Z

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->isReplayModuleAbsenceLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    const-string v0, "SentryAndroidOptions is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 49
    nop

    .line 50
    const-string v0, "BuildInfoProvider is required"

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/BuildInfoProvider;

    iput-object v0, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 51
    new-instance v0, Lio/sentry/android/core/internal/util/Debouncer;

    .line 53
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidCurrentDateProvider;->getInstance()Lio/sentry/transport/ICurrentDateProvider;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lio/sentry/android/core/internal/util/Debouncer;-><init>(Lio/sentry/transport/ICurrentDateProvider;JI)V

    iput-object v0, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->debouncer:Lio/sentry/android/core/internal/util/Debouncer;

    .line 57
    iput-boolean p3, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->isReplayAvailable:Z

    .line 59
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachScreenshot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "Screenshot"

    invoke-static {v0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public getOrder()Ljava/lang/Long;
    .locals 2

    .line 140
    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$process$0$io-sentry-android-core-ScreenshotEventProcessor(Landroid/graphics/Bitmap;)[B
    .locals 1
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    invoke-static {p1, v0}, Lio/sentry/android/core/internal/util/ScreenshotUtils;->compressBitmapToPng(Landroid/graphics/Bitmap;Lio/sentry/ILogger;)[B

    move-result-object v0

    return-object v0
.end method

.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 8
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 75
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->isErrored()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    return-object p1

    .line 78
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachScreenshot()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "attachScreenshot is disabled."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    return-object p1

    .line 83
    :cond_1
    iget-boolean v0, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->isReplayAvailable:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getScreenshot()Lio/sentry/android/core/SentryScreenshotOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/SentryScreenshotOptions;->getMaskViewClasses()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    iget-object v0, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->isReplayModuleAbsenceLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    iget-object v0, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 86
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 87
    const-string v3, "Screenshot masking requires sentry-android-replay module"

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_2
    return-object p1

    .line 92
    :cond_3
    invoke-static {}, Lio/sentry/android/core/CurrentActivityHolder;->getInstance()Lio/sentry/android/core/CurrentActivityHolder;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/CurrentActivityHolder;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 93
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_9

    invoke-static {p2}, Lio/sentry/util/HintUtils;->isFromHybridSdk(Lio/sentry/Hint;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 99
    :cond_4
    iget-object v2, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->debouncer:Lio/sentry/android/core/internal/util/Debouncer;

    invoke-virtual {v2}, Lio/sentry/android/core/internal/util/Debouncer;->checkForDebounce()Z

    move-result v2

    .line 100
    .local v2, "shouldDebounce":Z
    iget-object v3, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 101
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getBeforeScreenshotCaptureCallback()Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

    move-result-object v3

    .line 102
    .local v3, "beforeCaptureCallback":Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;
    if-eqz v3, :cond_6

    .line 104
    :try_start_0
    invoke-interface {v3, p1, p2, v2}, Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;->execute(Lio/sentry/SentryEvent;Lio/sentry/Hint;Z)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    .line 105
    return-object p1

    .line 116
    :cond_5
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/sentry/util/ExceptionUtils;->rethrowIfFatal(Ljava/lang/Throwable;)V

    .line 109
    iget-object v4, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 110
    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 111
    const-string v6, "The beforeScreenshotCapture callback threw an exception. Skipping screenshot capture."

    invoke-interface {v4, v5, v6, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    return-object p1

    .line 117
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_6
    if-eqz v2, :cond_7

    .line 118
    return-object p1

    .line 121
    :cond_7
    :goto_0
    iget-object v4, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    iget-object v5, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    iget-boolean v6, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->isReplayAvailable:Z

    .line 122
    invoke-static {v0, v4, v5, v6}, Lio/sentry/android/core/internal/util/ScreenshotUtils;->captureMaskedScreenshot(Landroid/app/Activity;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 124
    .local v4, "screenshot":Landroid/graphics/Bitmap;
    if-nez v4, :cond_8

    .line 125
    return-object p1

    .line 128
    :cond_8
    new-instance v5, Lio/sentry/android/core/ScreenshotEventProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v4}, Lio/sentry/android/core/ScreenshotEventProcessor$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/ScreenshotEventProcessor;Landroid/graphics/Bitmap;)V

    .line 129
    const-string v6, "screenshot.png"

    const-string v7, "image/png"

    invoke-static {v5, v6, v7, v1}, Lio/sentry/Attachment;->fromByteProvider(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Z)Lio/sentry/Attachment;

    move-result-object v1

    .line 128
    invoke-virtual {p2, v1}, Lio/sentry/Hint;->setScreenshot(Lio/sentry/Attachment;)V

    .line 134
    const-string v1, "android:activity"

    invoke-virtual {p2, v1, v0}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    return-object p1

    .line 94
    .end local v2    # "shouldDebounce":Z
    .end local v3    # "beforeCaptureCallback":Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;
    .end local v4    # "screenshot":Landroid/graphics/Bitmap;
    :cond_9
    :goto_1
    return-object p1
.end method

.method public process(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 0
    .param p1, "transaction"    # Lio/sentry/protocol/SentryTransaction;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 70
    return-object p1
.end method
