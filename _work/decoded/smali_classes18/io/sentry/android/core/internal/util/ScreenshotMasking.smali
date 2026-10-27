.class public final Lio/sentry/android/core/internal/util/ScreenshotMasking;
.super Ljava/lang/Object;
.source "ScreenshotMasking.java"


# static fields
.field private static final MASKING_TIMEOUT_MS:J = 0x7d0L

.field private static final REPLAY_INTEGRATION_CLASS_NAME:Ljava/lang/String; = "io.sentry.android.replay.ReplayIntegration"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyMasking(Landroid/graphics/Bitmap;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/ILogger;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "screenshot"    # Landroid/graphics/Bitmap;
    .param p1, "rootNode"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .param p2, "logger"    # Lio/sentry/ILogger;

    .line 136
    move-object v0, p0

    .line 137
    .local v0, "mutableBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 138
    .local v1, "createdCopy":Z
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lio/sentry/android/replay/util/MaskRenderer;

    invoke-direct {v3}, Lio/sentry/android/replay/util/MaskRenderer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .local v3, "maskRenderer":Lio/sentry/android/replay/util/MaskRenderer;
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 141
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v0, v4

    .line 142
    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    nop

    .line 157
    :try_start_2
    invoke-virtual {v3}, Lio/sentry/android/replay/util/MaskRenderer;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    return-object v2

    .line 146
    :cond_0
    const/4 v1, 0x1

    .line 149
    :cond_1
    :try_start_3
    invoke-virtual {v3, v0, p1, v2}, Lio/sentry/android/replay/util/MaskRenderer;->renderMasks(Landroid/graphics/Bitmap;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Landroid/graphics/Matrix;)Ljava/util/List;

    .line 152
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 153
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    :cond_2
    nop

    .line 157
    :try_start_4
    invoke-virtual {v3}, Lio/sentry/android/replay/util/MaskRenderer;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 156
    return-object v0

    .line 138
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual {v3}, Lio/sentry/android/replay/util/MaskRenderer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "mutableBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "createdCopy":Z
    .end local p0    # "screenshot":Landroid/graphics/Bitmap;
    .end local p1    # "rootNode":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .end local p2    # "logger":Lio/sentry/ILogger;
    :goto_0
    throw v4
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 157
    .end local v3    # "maskRenderer":Lio/sentry/android/replay/util/MaskRenderer;
    .restart local v0    # "mutableBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "createdCopy":Z
    .restart local p0    # "screenshot":Landroid/graphics/Bitmap;
    .restart local p1    # "rootNode":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .restart local p2    # "logger":Lio/sentry/ILogger;
    :catch_0
    move-exception v3

    .line 158
    .local v3, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Failed to mask screenshot"

    invoke-interface {p2, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    if-eqz v1, :cond_3

    .line 160
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 164
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 165
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 167
    :cond_4
    return-object v2
.end method

.method private static buildViewHierarchy(Landroid/app/Activity;Lio/sentry/android/core/SentryScreenshotOptions;Lio/sentry/ILogger;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "screenshotOptions"    # Lio/sentry/android/core/SentryScreenshotOptions;
    .param p2, "logger"    # Lio/sentry/ILogger;

    .line 113
    nop

    .line 111
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 115
    :cond_0
    move-object v1, v0

    :goto_0
    nop

    .line 116
    .local v1, "rootView":Landroid/view/View;
    if-nez v1, :cond_1

    .line 117
    return-object v0

    .line 120
    :cond_1
    sget-object v2, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->Companion:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;

    .line 121
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3, p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;->fromView(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ILio/sentry/SentryMaskingOptions;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    move-result-object v2

    .line 122
    .local v2, "rootNode":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    invoke-static {v1, v2, p1, p2, v0}, Lio/sentry/android/replay/util/ViewsKt;->traverse(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/SentryMaskingOptions;Lio/sentry/ILogger;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    return-object v2

    .line 124
    .end local v1    # "rootView":Landroid/view/View;
    .end local v2    # "rootNode":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    :catchall_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/sentry/util/ExceptionUtils;->rethrowIfFatal(Ljava/lang/Throwable;)V

    .line 127
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to build view hierarchy"

    invoke-interface {p2, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    return-object v0
.end method

.method private static captureViewHierarchy(Landroid/app/Activity;Lio/sentry/android/core/SentryScreenshotOptions;Lio/sentry/util/thread/IThreadChecker;Lio/sentry/ILogger;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "screenshotOptions"    # Lio/sentry/android/core/SentryScreenshotOptions;
    .param p2, "threadChecker"    # Lio/sentry/util/thread/IThreadChecker;
    .param p3, "logger"    # Lio/sentry/ILogger;

    .line 74
    invoke-interface {p2}, Lio/sentry/util/thread/IThreadChecker;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p0, p1, p3}, Lio/sentry/android/core/internal/util/ScreenshotMasking;->buildViewHierarchy(Landroid/app/Activity;Lio/sentry/android/core/SentryScreenshotOptions;Lio/sentry/ILogger;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object v3, v0

    .line 79
    .local v3, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;>;"
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 82
    .local v7, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    new-instance v2, Lio/sentry/android/core/internal/util/ScreenshotMasking$$ExternalSyntheticLambda0;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    .end local p0    # "activity":Landroid/app/Activity;
    .end local p1    # "screenshotOptions":Lio/sentry/android/core/SentryScreenshotOptions;
    .end local p3    # "logger":Lio/sentry/ILogger;
    .local v4, "activity":Landroid/app/Activity;
    .local v5, "screenshotOptions":Lio/sentry/android/core/SentryScreenshotOptions;
    .local v6, "logger":Lio/sentry/ILogger;
    :try_start_1
    invoke-direct/range {v2 .. v7}, Lio/sentry/android/core/internal/util/ScreenshotMasking$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Landroid/app/Activity;Lio/sentry/android/core/SentryScreenshotOptions;Lio/sentry/ILogger;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v7, v8, v9, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 92
    sget-object p0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p1, "Timed out waiting for view hierarchy capture on main thread"

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {v6, p0, p1, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    return-object v1

    .line 100
    :cond_1
    nop

    .line 102
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    return-object p0

    .line 96
    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .end local v4    # "activity":Landroid/app/Activity;
    .end local v5    # "screenshotOptions":Lio/sentry/android/core/SentryScreenshotOptions;
    .end local v6    # "logger":Lio/sentry/ILogger;
    .restart local p0    # "activity":Landroid/app/Activity;
    .restart local p1    # "screenshotOptions":Lio/sentry/android/core/SentryScreenshotOptions;
    .restart local p3    # "logger":Lio/sentry/ILogger;
    :catch_1
    move-exception v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    move-object p0, v0

    .line 97
    .end local p1    # "screenshotOptions":Lio/sentry/android/core/SentryScreenshotOptions;
    .end local p3    # "logger":Lio/sentry/ILogger;
    .restart local v4    # "activity":Landroid/app/Activity;
    .restart local v5    # "screenshotOptions":Lio/sentry/android/core/SentryScreenshotOptions;
    .restart local v6    # "logger":Lio/sentry/ILogger;
    .local p0, "e":Ljava/lang/InterruptedException;
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 98
    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string p3, "Interrupted while capturing view hierarchy"

    invoke-interface {v6, p1, p3, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    return-object v1
.end method

.method public static isAvailable(Lio/sentry/ILogger;)Z
    .locals 2
    .param p0, "logger"    # Lio/sentry/ILogger;

    .line 40
    new-instance v0, Lio/sentry/util/LoadClass;

    invoke-direct {v0}, Lio/sentry/util/LoadClass;-><init>()V

    const-string v1, "io.sentry.android.replay.ReplayIntegration"

    invoke-virtual {v0, v1, p0}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/ILogger;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$captureViewHierarchy$0(Ljava/util/concurrent/atomic/AtomicReference;Landroid/app/Activity;Lio/sentry/android/core/SentryScreenshotOptions;Lio/sentry/ILogger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .param p0, "result"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "screenshotOptions"    # Lio/sentry/android/core/SentryScreenshotOptions;
    .param p3, "logger"    # Lio/sentry/ILogger;
    .param p4, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 85
    :try_start_0
    invoke-static {p1, p2, p3}, Lio/sentry/android/core/internal/util/ScreenshotMasking;->buildViewHierarchy(Landroid/app/Activity;Lio/sentry/android/core/SentryScreenshotOptions;Lio/sentry/ILogger;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {p4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 88
    nop

    .line 89
    return-void

    .line 87
    :catchall_0
    move-exception v0

    invoke-virtual {p4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 88
    throw v0
.end method

.method public static mask(Landroid/app/Activity;Landroid/graphics/Bitmap;Lio/sentry/android/core/SentryScreenshotOptions;Lio/sentry/util/thread/IThreadChecker;Lio/sentry/ILogger;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;
    .param p2, "screenshotOptions"    # Lio/sentry/android/core/SentryScreenshotOptions;
    .param p3, "threadChecker"    # Lio/sentry/util/thread/IThreadChecker;
    .param p4, "logger"    # Lio/sentry/ILogger;

    .line 55
    nop

    .line 56
    invoke-static {p0, p2, p3, p4}, Lio/sentry/android/core/internal/util/ScreenshotMasking;->captureViewHierarchy(Landroid/app/Activity;Lio/sentry/android/core/SentryScreenshotOptions;Lio/sentry/util/thread/IThreadChecker;Lio/sentry/ILogger;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    move-result-object v0

    .line 57
    .local v0, "rootNode":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 59
    const/4 v1, 0x0

    return-object v1

    .line 62
    :cond_0
    invoke-static {p1, v0, p4}, Lio/sentry/android/core/internal/util/ScreenshotMasking;->applyMasking(Landroid/graphics/Bitmap;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/ILogger;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
