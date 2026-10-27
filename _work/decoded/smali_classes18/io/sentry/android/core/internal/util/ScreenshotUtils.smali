.class public Lio/sentry/android/core/internal/util/ScreenshotUtils;
.super Ljava/lang/Object;
.source "ScreenshotUtils.java"


# static fields
.field private static final CAPTURE_TIMEOUT_MS:J = 0x3e8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureMaskedScreenshot(Landroid/app/Activity;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Z)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p3, "isReplayAvailable"    # Z

    .line 87
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getScreenshot()Lio/sentry/android/core/SentryScreenshotOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/SentryScreenshotOptions;->getMaskViewClasses()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 88
    .local v0, "isMaskingConfigured":Z
    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 89
    nop

    .line 90
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 91
    const-string v4, "Screenshot masking requires sentry-android-replay module"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    const/4 v1, 0x0

    return-object v1

    .line 95
    :cond_0
    nop

    .line 97
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    move-result-object v1

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    .line 96
    invoke-static {p0, v1, v2, p2}, Lio/sentry/android/core/internal/util/ScreenshotUtils;->captureScreenshot(Landroid/app/Activity;Lio/sentry/util/thread/IThreadChecker;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 98
    .local v1, "screenshot":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    nop

    .line 106
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getScreenshot()Lio/sentry/android/core/SentryScreenshotOptions;

    move-result-object v2

    .line 107
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    move-result-object v3

    .line 108
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    .line 103
    invoke-static {p0, v1, v2, v3, v4}, Lio/sentry/android/core/internal/util/ScreenshotMasking;->mask(Landroid/app/Activity;Landroid/graphics/Bitmap;Lio/sentry/android/core/SentryScreenshotOptions;Lio/sentry/util/thread/IThreadChecker;Lio/sentry/ILogger;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 99
    :cond_2
    :goto_0
    return-object v1
.end method

.method public static captureScreenshot(Landroid/app/Activity;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 115
    nop

    .line 116
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->getInstance()Lio/sentry/android/core/internal/util/AndroidThreadChecker;

    move-result-object v0

    .line 115
    invoke-static {p0, v0, p1, p2}, Lio/sentry/android/core/internal/util/ScreenshotUtils;->captureScreenshot(Landroid/app/Activity;Lio/sentry/util/thread/IThreadChecker;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static captureScreenshot(Landroid/app/Activity;Lio/sentry/util/thread/IThreadChecker;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "threadChecker"    # Lio/sentry/util/thread/IThreadChecker;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .param p3, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 128
    move-object/from16 v1, p2

    invoke-static/range {p0 .. p0}, Lio/sentry/android/core/internal/util/ScreenshotUtils;->isActivityValid(Landroid/app/Activity;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Activity isn\'t valid, not taking screenshot."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    return-object v3

    .line 133
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 134
    .local v4, "window":Landroid/view/Window;
    if-nez v4, :cond_1

    .line 135
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Activity window is null, not taking screenshot."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    return-object v3

    .line 139
    :cond_1
    invoke-virtual {v4}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v5

    .line 140
    .local v5, "decorView":Landroid/view/View;
    if-nez v5, :cond_2

    .line 141
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v6, "DecorView is null, not taking screenshot."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v6, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    return-object v3

    .line 145
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    .line 146
    .local v6, "view":Landroid/view/View;
    if-nez v6, :cond_3

    .line 147
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v7, "Root view is null, not taking screenshot."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v7, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    return-object v3

    .line 151
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_4

    move-object/from16 v8, p0

    goto/16 :goto_4

    .line 157
    :cond_4
    nop

    .line 158
    :try_start_0
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v7, v0

    .line 160
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v9, v0

    .line 163
    .local v9, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-virtual/range {p3 .. p3}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v10, 0x1a

    const-wide/16 v11, 0x3e8

    if-lt v0, v10, :cond_7

    .line 165
    new-instance v0, Landroid/os/HandlerThread;

    const-string v10, "SentryScreenshot"

    invoke-direct {v0, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 166
    .local v10, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 168
    const/4 v13, 0x0

    .line 169
    .local v13, "success":Z
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v14, -0x1

    invoke-direct {v0, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v14, v0

    .line 171
    .local v14, "copyResultCode":Ljava/util/concurrent/atomic/AtomicInteger;
    :try_start_1
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v15

    invoke-direct {v0, v15}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 173
    .local v0, "handler":Landroid/os/Handler;
    new-instance v15, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda0;

    invoke-direct {v15, v14, v9}, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v4, v7, v15, v0}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 182
    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v11, v12, v15}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v11

    .line 183
    .local v11, "completed":Z
    if-eqz v11, :cond_5

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v12, :cond_5

    move v2, v8

    :cond_5
    move v13, v2

    .line 188
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v11    # "completed":Z
    :try_start_2
    invoke-virtual {v10}, Landroid/os/HandlerThread;->quit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v8, "Taking screenshot using PixelCopy failed."

    invoke-interface {v1, v2, v8, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    .end local v0    # "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v10}, Landroid/os/HandlerThread;->quit()Z

    .line 189
    :goto_0
    nop

    .line 191
    if-nez v13, :cond_6

    .line 192
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "PixelCopy failed for screenshot capture (result=%d)."

    .line 195
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 192
    invoke-interface {v1, v0, v2, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    return-object v3

    .line 198
    .end local v10    # "thread":Landroid/os/HandlerThread;
    .end local v13    # "success":Z
    .end local v14    # "copyResultCode":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_6
    move-object/from16 v8, p0

    goto :goto_2

    .line 188
    .restart local v10    # "thread":Landroid/os/HandlerThread;
    .restart local v13    # "success":Z
    .restart local v14    # "copyResultCode":Ljava/util/concurrent/atomic/AtomicInteger;
    :catchall_1
    move-exception v0

    invoke-virtual {v10}, Landroid/os/HandlerThread;->quit()Z

    .line 189
    nop

    .end local v4    # "window":Landroid/view/Window;
    .end local v5    # "decorView":Landroid/view/View;
    .end local v6    # "view":Landroid/view/View;
    .end local p0    # "activity":Landroid/app/Activity;
    .end local p1    # "threadChecker":Lio/sentry/util/thread/IThreadChecker;
    .end local p2    # "logger":Lio/sentry/ILogger;
    .end local p3    # "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    throw v0

    .line 199
    .end local v10    # "thread":Landroid/os/HandlerThread;
    .end local v13    # "success":Z
    .end local v14    # "copyResultCode":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v4    # "window":Landroid/view/Window;
    .restart local v5    # "decorView":Landroid/view/View;
    .restart local v6    # "view":Landroid/view/View;
    .restart local p0    # "activity":Landroid/app/Activity;
    .restart local p1    # "threadChecker":Lio/sentry/util/thread/IThreadChecker;
    .restart local p2    # "logger":Lio/sentry/ILogger;
    .restart local p3    # "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    :cond_7
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 200
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-interface/range {p1 .. p1}, Lio/sentry/util/thread/IThreadChecker;->isMainThread()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 201
    invoke-virtual {v6, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 202
    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move-object/from16 v8, p0

    goto :goto_1

    .line 204
    :cond_8
    new-instance v2, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2, v6, v0, v1, v9}, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;Landroid/graphics/Canvas;Lio/sentry/ILogger;Ljava/util/concurrent/CountDownLatch;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v8, p0

    :try_start_5
    invoke-virtual {v8, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 216
    :goto_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v11, v12, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v2, :cond_9

    .line 217
    return-object v3

    .line 220
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_9
    :goto_2
    return-object v7

    .line 221
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v8, p0

    .line 222
    .local v0, "e":Ljava/lang/Throwable;
    :goto_3
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v7, "Taking screenshot failed."

    invoke-interface {v1, v2, v7, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    .end local v0    # "e":Ljava/lang/Throwable;
    return-object v3

    .line 151
    :cond_a
    move-object/from16 v8, p0

    .line 152
    :goto_4
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v7, "View\'s width and height is zeroed, not taking screenshot."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v7, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    return-object v3
.end method

.method public static compressBitmapToPng(Landroid/graphics/Bitmap;Lio/sentry/ILogger;)[B
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 237
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 240
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 243
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 244
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 246
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 247
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Screenshot is 0 bytes, not attaching the image."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    nop

    .line 253
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 248
    return-object v0

    .line 252
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 252
    return-object v2

    .line 240
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    .end local p1    # "logger":Lio/sentry/ILogger;
    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 253
    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "logger":Lio/sentry/ILogger;
    :catchall_2
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Compressing bitmap failed."

    invoke-interface {p1, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    .end local v1    # "e":Ljava/lang/Throwable;
    return-object v0

    .line 238
    :cond_2
    :goto_1
    return-object v0
.end method

.method private static isActivityValid(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 260
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$captureScreenshot$0(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;I)V
    .locals 0
    .param p0, "copyResultCode"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "copyResult"    # I

    .line 177
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 178
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 179
    return-void
.end method

.method static synthetic lambda$captureScreenshot$1(Landroid/view/View;Landroid/graphics/Canvas;Lio/sentry/ILogger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .param p3, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 207
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :goto_0
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 212
    goto :goto_1

    .line 208
    :catchall_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Taking screenshot failed (view.draw)."

    invoke-interface {p2, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 213
    :goto_1
    return-void

    .line 211
    :catchall_1
    move-exception v0

    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 212
    throw v0
.end method

.method public static takeMaskedScreenshot(Landroid/app/Activity;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;)[B
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 67
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/android/core/internal/util/ScreenshotMasking;->isAvailable(Lio/sentry/ILogger;)Z

    move-result v0

    .line 68
    .local v0, "isReplayAvailable":Z
    nop

    .line 69
    invoke-static {p0, p1, p2, v0}, Lio/sentry/android/core/internal/util/ScreenshotUtils;->captureMaskedScreenshot(Landroid/app/Activity;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    .line 68
    invoke-static {v1, v2}, Lio/sentry/android/core/internal/util/ScreenshotUtils;->compressBitmapToPng(Landroid/graphics/Bitmap;Lio/sentry/ILogger;)[B

    move-result-object v1

    return-object v1
.end method

.method public static takeScreenshot(Landroid/app/Activity;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)[B
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 39
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->getInstance()Lio/sentry/android/core/internal/util/AndroidThreadChecker;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lio/sentry/android/core/internal/util/ScreenshotUtils;->takeScreenshot(Landroid/app/Activity;Lio/sentry/util/thread/IThreadChecker;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)[B

    move-result-object v0

    return-object v0
.end method

.method public static takeScreenshot(Landroid/app/Activity;Lio/sentry/util/thread/IThreadChecker;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)[B
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "threadChecker"    # Lio/sentry/util/thread/IThreadChecker;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .param p3, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 50
    nop

    .line 51
    invoke-static {p0, p1, p2, p3}, Lio/sentry/android/core/internal/util/ScreenshotUtils;->captureScreenshot(Landroid/app/Activity;Lio/sentry/util/thread/IThreadChecker;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    .local v0, "screenshot":Landroid/graphics/Bitmap;
    invoke-static {v0, p2}, Lio/sentry/android/core/internal/util/ScreenshotUtils;->compressBitmapToPng(Landroid/graphics/Bitmap;Lio/sentry/ILogger;)[B

    move-result-object v1

    return-object v1
.end method
