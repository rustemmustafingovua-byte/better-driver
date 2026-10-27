.class public final Lio/sentry/android/replay/screenshot/CanvasStrategy;
.super Ljava/lang/Object;
.source "CanvasStrategy.kt"

# interfaces
.implements Lio/sentry/android/replay/screenshot/ScreenshotStrategy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCanvasStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CanvasStrategy.kt\nio/sentry/android/replay/screenshot/CanvasStrategy\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1032:1\n1#2:1033\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(H\u0017J\u0008\u0010)\u001a\u00020&H\u0016J\u0008\u0010*\u001a\u00020&H\u0016J\u0008\u0010\r\u001a\u00020\u0011H\u0016J\u0008\u0010+\u001a\u00020&H\u0016J\u0008\u0010,\u001a\u00020&H\u0002J\u0012\u0010-\u001a\u00020&*\u00020.2\u0006\u0010/\u001a\u000200R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u000f8\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lio/sentry/android/replay/screenshot/CanvasStrategy;",
        "Lio/sentry/android/replay/screenshot/ScreenshotStrategy;",
        "executor",
        "Lio/sentry/android/replay/ExecutorProvider;",
        "screenshotRecorderCallback",
        "Lio/sentry/android/replay/ScreenshotRecorderCallback;",
        "options",
        "Lio/sentry/SentryOptions;",
        "config",
        "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "(Lio/sentry/android/replay/ExecutorProvider;Lio/sentry/android/replay/ScreenshotRecorderCallback;Lio/sentry/SentryOptions;Lio/sentry/android/replay/ScreenshotRecorderConfig;)V",
        "isClosed",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "lastCaptureSuccessful",
        "pictureRenderTask",
        "Ljava/lang/Runnable;",
        "pixelCopyInFlight",
        "",
        "prescaledMatrix",
        "Landroid/graphics/Matrix;",
        "getPrescaledMatrix",
        "()Landroid/graphics/Matrix;",
        "prescaledMatrix$delegate",
        "Lkotlin/Lazy;",
        "screenshot",
        "Landroid/graphics/Bitmap;",
        "screenshotLock",
        "Lio/sentry/util/AutoClosableReentrantLock;",
        "surface",
        "Landroid/view/Surface;",
        "surfaceTexture",
        "Landroid/graphics/SurfaceTexture;",
        "textIgnoringCanvas",
        "Lio/sentry/android/replay/screenshot/TextIgnoringDelegateCanvas;",
        "unprocessedPictureRef",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Landroid/graphics/Picture;",
        "capture",
        "",
        "root",
        "Landroid/view/View;",
        "close",
        "emitLastScreenshot",
        "onContentChanged",
        "releaseResources",
        "postSafely",
        "Landroid/os/Handler;",
        "runnable",
        "Lio/sentry/android/replay/util/ReplayRunnable;",
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
.field private final config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

.field private final executor:Lio/sentry/android/replay/ExecutorProvider;

.field private final isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final options:Lio/sentry/SentryOptions;

.field private final pictureRenderTask:Ljava/lang/Runnable;

.field private pixelCopyInFlight:Z

.field private final prescaledMatrix$delegate:Lkotlin/Lazy;

.field private volatile screenshot:Landroid/graphics/Bitmap;

.field private final screenshotLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final screenshotRecorderCallback:Lio/sentry/android/replay/ScreenshotRecorderCallback;

.field private final surface:Landroid/view/Surface;

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final textIgnoringCanvas:Lio/sentry/android/replay/screenshot/TextIgnoringDelegateCanvas;

.field private unprocessedPictureRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/graphics/Picture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2UAJt1hBu9QhF1B1XN0SsHFT_0w(Lio/sentry/android/replay/screenshot/CanvasStrategy;I)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/android/replay/screenshot/CanvasStrategy;->pictureRenderTask$lambda$0$1(Lio/sentry/android/replay/screenshot/CanvasStrategy;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$k9bUoRW7vYlLT1UnkJ-W6H5FXwE(Lio/sentry/android/replay/screenshot/CanvasStrategy;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/android/replay/screenshot/CanvasStrategy;->pictureRenderTask$lambda$0(Lio/sentry/android/replay/screenshot/CanvasStrategy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qZP_aXPyLJF_qBGijfoFBaXJMKw(Lio/sentry/android/replay/screenshot/CanvasStrategy;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/android/replay/screenshot/CanvasStrategy;->close$lambda$0(Lio/sentry/android/replay/screenshot/CanvasStrategy;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->$stable:I

    return-void
.end method

.method public constructor <init>(Lio/sentry/android/replay/ExecutorProvider;Lio/sentry/android/replay/ScreenshotRecorderCallback;Lio/sentry/SentryOptions;Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 5
    .param p1, "executor"    # Lio/sentry/android/replay/ExecutorProvider;
    .param p2, "screenshotRecorderCallback"    # Lio/sentry/android/replay/ScreenshotRecorderCallback;
    .param p3, "options"    # Lio/sentry/SentryOptions;
    .param p4, "config"    # Lio/sentry/android/replay/ScreenshotRecorderConfig;

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->executor:Lio/sentry/android/replay/ExecutorProvider;

    .line 48
    iput-object p2, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->screenshotRecorderCallback:Lio/sentry/android/replay/ScreenshotRecorderCallback;

    .line 49
    iput-object p3, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->options:Lio/sentry/SentryOptions;

    .line 50
    iput-object p4, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->unprocessedPictureRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 55
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->screenshotLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 57
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lio/sentry/android/replay/screenshot/CanvasStrategy$prescaledMatrix$2;

    invoke-direct {v1, p0}, Lio/sentry/android/replay/screenshot/CanvasStrategy$prescaledMatrix$2;-><init>(Lio/sentry/android/replay/screenshot/CanvasStrategy;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->prescaledMatrix$delegate:Lkotlin/Lazy;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Lio/sentry/android/replay/screenshot/TextIgnoringDelegateCanvas;

    invoke-direct {v0}, Lio/sentry/android/replay/screenshot/TextIgnoringDelegateCanvas;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->textIgnoringCanvas:Lio/sentry/android/replay/screenshot/TextIgnoringDelegateCanvas;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    move-object v1, v0

    .local v1, "$this$surfaceTexture_u24lambda_u240":Landroid/graphics/SurfaceTexture;
    const/4 v2, 0x0

    .line 67
    .local v2, "$i$a$-apply-CanvasStrategy$surfaceTexture$1":I
    iget-object v3, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    invoke-virtual {v3}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingWidth()I

    move-result v3

    iget-object v4, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    invoke-virtual {v4}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 68
    nop

    .line 66
    .end local v1    # "$this$surfaceTexture_u24lambda_u240":Landroid/graphics/SurfaceTexture;
    .end local v2    # "$i$a$-apply-CanvasStrategy$surfaceTexture$1":I
    iput-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 69
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->surface:Landroid/view/Surface;

    .line 71
    nop

    .line 72
    const-string v0, "ReplayCanvasStrategy"

    invoke-static {v0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    .line 73
    nop

    .line 76
    new-instance v0, Lio/sentry/android/replay/screenshot/CanvasStrategy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/sentry/android/replay/screenshot/CanvasStrategy$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/replay/screenshot/CanvasStrategy;)V

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->pictureRenderTask:Ljava/lang/Runnable;

    .line 46
    return-void
.end method

.method public static final synthetic access$getConfig$p(Lio/sentry/android/replay/screenshot/CanvasStrategy;)Lio/sentry/android/replay/ScreenshotRecorderConfig;
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/screenshot/CanvasStrategy;

    .line 45
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    return-object v0
.end method

.method private static final close$lambda$0(Lio/sentry/android/replay/screenshot/CanvasStrategy;)V
    .locals 1
    .param p0, "this$0"    # Lio/sentry/android/replay/screenshot/CanvasStrategy;

    .line 188
    iget-boolean v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->pixelCopyInFlight:Z

    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/CanvasStrategy;->releaseResources()V

    .line 191
    :cond_0
    return-void
.end method

.method private final getPrescaledMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->prescaledMatrix$delegate:Lkotlin/Lazy;

    .line 57
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    return-object v0
.end method

.method private static final pictureRenderTask$lambda$0(Lio/sentry/android/replay/screenshot/CanvasStrategy;)V
    .locals 10
    .param p0, "this$0"    # Lio/sentry/android/replay/screenshot/CanvasStrategy;

    .line 77
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    .line 79
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 80
    new-array v1, v1, [Ljava/lang/Object;

    .line 78
    const-string v3, "Canvas Strategy already closed, skipping picture render"

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->unprocessedPictureRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Picture;

    if-nez v0, :cond_1

    return-void

    .line 85
    .local v0, "picture":Landroid/graphics/Picture;
    :cond_1
    nop

    .line 88
    :try_start_0
    iget-object v3, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->surface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 89
    .local v3, "surfaceCanvas":Landroid/graphics/Canvas;
    nop

    .line 90
    :try_start_1
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 91
    invoke-virtual {v0, v3}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 93
    :try_start_2
    iget-object v4, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->surface:Landroid/view/Surface;

    invoke-virtual {v4, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 94
    nop

    .line 96
    iget-object v4, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->screenshot:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    .line 97
    iget-object v4, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->screenshotLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v4}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v4

    check-cast v4, Ljava/lang/AutoCloseable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    move-object v5, v4

    check-cast v5, Lio/sentry/ISentryLifecycleToken;

    .local v5, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v6, 0x0

    .line 98
    .local v6, "$i$a$-use-CanvasStrategy$pictureRenderTask$1$1":I
    iget-object v7, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->screenshot:Landroid/graphics/Bitmap;

    if-nez v7, :cond_2

    .line 99
    nop

    .line 101
    iget-object v7, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    invoke-virtual {v7}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingWidth()I

    move-result v7

    .line 102
    iget-object v8, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    invoke-virtual {v8}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingHeight()I

    move-result v8

    .line 103
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 100
    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 99
    iput-object v7, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->screenshot:Landroid/graphics/Bitmap;

    .line 106
    :cond_2
    nop

    .end local v5    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v6    # "$i$a$-use-CanvasStrategy$pictureRenderTask$1$1":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    :try_start_4
    invoke-static {v4, v2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    :catchall_0
    move-exception v2

    .end local v0    # "picture":Landroid/graphics/Picture;
    .end local v3    # "surfaceCanvas":Landroid/graphics/Canvas;
    .end local p0    # "this$0":Lio/sentry/android/replay/screenshot/CanvasStrategy;
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .restart local v0    # "picture":Landroid/graphics/Picture;
    .restart local v3    # "surfaceCanvas":Landroid/graphics/Canvas;
    .restart local p0    # "this$0":Lio/sentry/android/replay/screenshot/CanvasStrategy;
    :catchall_1
    move-exception v5

    :try_start_6
    invoke-static {v4, v2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .end local v0    # "picture":Landroid/graphics/Picture;
    .end local p0    # "this$0":Lio/sentry/android/replay/screenshot/CanvasStrategy;
    throw v5

    .line 109
    .restart local v0    # "picture":Landroid/graphics/Picture;
    .restart local p0    # "this$0":Lio/sentry/android/replay/screenshot/CanvasStrategy;
    :cond_3
    :goto_0
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 110
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    .line 111
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 112
    const-string v5, "Canvas Strategy already closed, skipping pixel copy request"

    new-array v6, v1, [Ljava/lang/Object;

    .line 110
    invoke-interface {v2, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    return-void

    .line 116
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->pixelCopyInFlight:Z

    .line 118
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->surface:Landroid/view/Surface;

    .line 119
    iget-object v4, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->screenshot:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 120
    nop

    .line 117
    new-instance v5, Lio/sentry/android/replay/screenshot/CanvasStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lio/sentry/android/replay/screenshot/CanvasStrategy$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/replay/screenshot/CanvasStrategy;)V

    .line 145
    iget-object v6, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->executor:Lio/sentry/android/replay/ExecutorProvider;

    invoke-interface {v6}, Lio/sentry/android/replay/ExecutorProvider;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v6

    .line 117
    invoke-static {v2, v4, v5, v6}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .end local v3    # "surfaceCanvas":Landroid/graphics/Canvas;
    goto :goto_1

    .line 93
    .restart local v3    # "surfaceCanvas":Landroid/graphics/Canvas;
    :catchall_2
    move-exception v2

    iget-object v4, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->surface:Landroid/view/Surface;

    invoke-virtual {v4, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .end local v0    # "picture":Landroid/graphics/Picture;
    .end local p0    # "this$0":Lio/sentry/android/replay/screenshot/CanvasStrategy;
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 147
    .end local v3    # "surfaceCanvas":Landroid/graphics/Canvas;
    .restart local v0    # "picture":Landroid/graphics/Picture;
    .restart local p0    # "this$0":Lio/sentry/android/replay/screenshot/CanvasStrategy;
    :catchall_3
    move-exception v2

    .line 149
    .local v2, "t":Ljava/lang/Throwable;
    iput-boolean v1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->pixelCopyInFlight:Z

    .line 150
    iget-object v3, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Canvas Strategy: picture render failed"

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    iget-object v3, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private static final pictureRenderTask$lambda$0$1(Lio/sentry/android/replay/screenshot/CanvasStrategy;I)V
    .locals 5
    .param p0, "this$0"    # Lio/sentry/android/replay/screenshot/CanvasStrategy;
    .param p1, "result"    # I

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->pixelCopyInFlight:Z

    .line 122
    iget-object v1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    .line 124
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 125
    new-array v0, v0, [Ljava/lang/Object;

    .line 123
    const-string v3, "CanvasStrategy is closed, ignoring capture result"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/CanvasStrategy;->releaseResources()V

    .line 129
    return-void

    .line 131
    :cond_0
    if-nez p1, :cond_1

    .line 132
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->screenshot:Landroid/graphics/Bitmap;

    .line 134
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 135
    iget-object v1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->screenshotRecorderCallback:Lio/sentry/android/replay/ScreenshotRecorderCallback;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lio/sentry/android/replay/ScreenshotRecorderCallback;->onScreenshotRecorded(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 138
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    .line 139
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Canvas Strategy: PixelCopy failed with code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    .line 138
    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 144
    :cond_2
    :goto_0
    return-void
.end method

.method private final releaseResources()V
    .locals 4

    .line 197
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->screenshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1033
    .local v0, "it":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 197
    .local v1, "$i$a$-let-CanvasStrategy$releaseResources$1":I
    monitor-enter v0

    .line 1033
    const/4 v2, 0x0

    .line 197
    .local v2, "$i$a$-synchronized-CanvasStrategy$releaseResources$1$1":I
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .end local v2    # "$i$a$-synchronized-CanvasStrategy$releaseResources$1$1":I
    :cond_0
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .end local v0    # "it":Landroid/graphics/Bitmap;
    .end local v1    # "$i$a$-let-CanvasStrategy$releaseResources$1":I
    goto :goto_0

    .restart local v0    # "it":Landroid/graphics/Bitmap;
    .restart local v1    # "$i$a$-let-CanvasStrategy$releaseResources$1":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2

    .line 198
    .end local v0    # "it":Landroid/graphics/Bitmap;
    .end local v1    # "$i$a$-let-CanvasStrategy$releaseResources$1":I
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 199
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 200
    return-void
.end method


# virtual methods
.method public capture(Landroid/view/View;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    return-void

    .line 161
    :cond_0
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 162
    .local v0, "picture":Landroid/graphics/Picture;
    iget-object v1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    invoke-virtual {v1}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingWidth()I

    move-result v1

    iget-object v2, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    invoke-virtual {v2}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    const-string v2, "beginRecording(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->textIgnoringCanvas:Lio/sentry/android/replay/screenshot/TextIgnoringDelegateCanvas;

    invoke-virtual {v2, v1}, Lio/sentry/android/replay/screenshot/TextIgnoringDelegateCanvas;->setDelegate(Landroid/graphics/Canvas;)V

    .line 164
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->textIgnoringCanvas:Lio/sentry/android/replay/screenshot/TextIgnoringDelegateCanvas;

    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/CanvasStrategy;->getPrescaledMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/sentry/android/replay/screenshot/TextIgnoringDelegateCanvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 165
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->textIgnoringCanvas:Lio/sentry/android/replay/screenshot/TextIgnoringDelegateCanvas;

    check-cast v2, Landroid/graphics/Canvas;

    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 166
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 168
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->unprocessedPictureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 172
    nop

    .line 170
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->executor:Lio/sentry/android/replay/ExecutorProvider;

    .line 171
    invoke-interface {v2}, Lio/sentry/android/replay/ExecutorProvider;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v2

    .line 172
    new-instance v3, Lio/sentry/android/replay/util/ReplayRunnable;

    const-string v4, "screenshot_recorder.canvas"

    iget-object v5, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->pictureRenderTask:Ljava/lang/Runnable;

    invoke-direct {v3, v4, v5}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2, v3}, Lio/sentry/android/replay/screenshot/CanvasStrategy;->postSafely(Landroid/os/Handler;Lio/sentry/android/replay/util/ReplayRunnable;)V

    .line 174
    :cond_1
    return-void
.end method

.method public close()V
    .locals 4

    .line 181
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 184
    nop

    .line 182
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->executor:Lio/sentry/android/replay/ExecutorProvider;

    .line 183
    invoke-interface {v0}, Lio/sentry/android/replay/ExecutorProvider;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    .line 185
    new-instance v1, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 184
    new-instance v2, Lio/sentry/android/replay/screenshot/CanvasStrategy$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lio/sentry/android/replay/screenshot/CanvasStrategy$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/replay/screenshot/CanvasStrategy;)V

    .line 185
    const-string v3, "CanvasStrategy.close"

    invoke-direct {v1, v3, v2}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 184
    invoke-virtual {p0, v0, v1}, Lio/sentry/android/replay/screenshot/CanvasStrategy;->postSafely(Landroid/os/Handler;Lio/sentry/android/replay/util/ReplayRunnable;)V

    .line 193
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->unprocessedPictureRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public emitLastScreenshot()V
    .locals 2

    .line 205
    invoke-virtual {p0}, Lio/sentry/android/replay/screenshot/CanvasStrategy;->lastCaptureSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->screenshot:Landroid/graphics/Bitmap;

    .line 207
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->screenshotRecorderCallback:Lio/sentry/android/replay/ScreenshotRecorderCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lio/sentry/android/replay/ScreenshotRecorderCallback;->onScreenshotRecorded(Landroid/graphics/Bitmap;)V

    .line 211
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public lastCaptureSuccessful()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onContentChanged()V
    .locals 0

    .line 178
    return-void
.end method

.method public final postSafely(Landroid/os/Handler;Lio/sentry/android/replay/util/ReplayRunnable;)V
    .locals 5
    .param p1, "$this$postSafely"    # Landroid/os/Handler;
    .param p2, "runnable"    # Lio/sentry/android/replay/util/ReplayRunnable;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    nop

    .line 215
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    .line 217
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    .line 218
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Canvas Strategy: failed to post runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lio/sentry/android/replay/util/ReplayRunnable;->getTaskName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 220
    nop

    .line 217
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
