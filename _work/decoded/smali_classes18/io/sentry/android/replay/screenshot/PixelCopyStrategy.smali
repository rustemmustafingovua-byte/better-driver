.class public final Lio/sentry/android/replay/screenshot/PixelCopyStrategy;
.super Ljava/lang/Object;
.source "PixelCopyStrategy.kt"

# interfaces
.implements Lio/sentry/android/replay/screenshot/ScreenshotStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/screenshot/PixelCopyStrategy$Companion;,
        Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0001\u0018\u0000 S2\u00020\u0001:\u0002STB?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0002\u0010\u000fJ \u00106\u001a\u00020\u000e2\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H\u0002J\u0010\u0010=\u001a\u00020\u000e2\u0006\u00107\u001a\u000208H\u0017J.\u0010>\u001a\u00020\u000e2\u0006\u00107\u001a\u0002082\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020A0@2\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H\u0003J\u0008\u0010B\u001a\u00020\u000eH\u0002J\u0008\u0010C\u001a\u00020\u000eH\u0016JE\u0010D\u001a\u00020\u000e2\u0006\u00107\u001a\u0002082\u000e\u0010E\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010G0F2\u0006\u00109\u001a\u00020:2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020I2\u0006\u0010;\u001a\u00020<H\u0002\u00a2\u0006\u0002\u0010KJ\u0008\u0010L\u001a\u00020\u000eH\u0016J\u0008\u0010M\u001a\u00020\u000eH\u0002J\u0008\u0010\u001c\u001a\u00020<H\u0016J\u0008\u0010N\u001a\u00020\u000eH\u0016J\u001d\u0010O\u001a\u00020\u000e2\u000e\u0010E\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010G0FH\u0002\u00a2\u0006\u0002\u0010PJ\u0008\u0010Q\u001a\u00020\u000eH\u0002J\u0008\u0010R\u001a\u00020<H\u0002R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010!\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u0017\u001a\u0004\u0008#\u0010$R\u000e\u0010&\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010(\u001a\u00020)8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010\u0017\u001a\u0004\u0008*\u0010+R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020.X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u000200X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u000202X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u000204X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020.X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006U"
    }
    d2 = {
        "Lio/sentry/android/replay/screenshot/PixelCopyStrategy;",
        "Lio/sentry/android/replay/screenshot/ScreenshotStrategy;",
        "executorProvider",
        "Lio/sentry/android/replay/ExecutorProvider;",
        "screenshotRecorderCallback",
        "Lio/sentry/android/replay/ScreenshotRecorderCallback;",
        "options",
        "Lio/sentry/SentryOptions;",
        "config",
        "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "debugOverlayDrawable",
        "Lio/sentry/android/replay/util/DebugOverlayDrawable;",
        "markContentChanged",
        "Lkotlin/Function0;",
        "",
        "(Lio/sentry/android/replay/ExecutorProvider;Lio/sentry/android/replay/ScreenshotRecorderCallback;Lio/sentry/SentryOptions;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lio/sentry/android/replay/util/DebugOverlayDrawable;Lkotlin/jvm/functions/Function0;)V",
        "contentChanged",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "dstOverPaint",
        "Landroid/graphics/Paint;",
        "getDstOverPaint",
        "()Landroid/graphics/Paint;",
        "dstOverPaint$delegate",
        "Lkotlin/Lazy;",
        "executor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "frameInFlight",
        "isClosed",
        "lastCaptureSuccessful",
        "mainLooperHandler",
        "Lio/sentry/android/replay/util/MainLooperHandler;",
        "maskRenderer",
        "Lio/sentry/android/replay/util/MaskRenderer;",
        "prescaledMatrix",
        "Landroid/graphics/Matrix;",
        "getPrescaledMatrix",
        "()Landroid/graphics/Matrix;",
        "prescaledMatrix$delegate",
        "screenshot",
        "Landroid/graphics/Bitmap;",
        "screenshotCanvas",
        "Landroid/graphics/Canvas;",
        "getScreenshotCanvas",
        "()Landroid/graphics/Canvas;",
        "screenshotCanvas$delegate",
        "svLocation",
        "",
        "tmpDstRect",
        "Landroid/graphics/RectF;",
        "tmpSrcRect",
        "Landroid/graphics/Rect;",
        "unstableCaptures",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "windowLocation",
        "applyMaskingAndNotify",
        "root",
        "Landroid/view/View;",
        "viewHierarchy",
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
        "resetUnstableCaptures",
        "",
        "capture",
        "captureSurfaceViews",
        "surfaceViewNodes",
        "",
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;",
        "cleanUpIfIdle",
        "close",
        "compositeSurfaceViewsAndMask",
        "captures",
        "",
        "Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;",
        "windowX",
        "",
        "windowY",
        "(Landroid/view/View;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;IIZ)V",
        "emitLastScreenshot",
        "finishFrame",
        "onContentChanged",
        "recycleCaptures",
        "([Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;)V",
        "scheduleCleanup",
        "shouldSkipUnstableCapture",
        "Companion",
        "SurfaceViewCapture",
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

.field private static final Companion:Lio/sentry/android/replay/screenshot/PixelCopyStrategy$Companion;

.field public static final MAX_UNSTABLE_CAPTURES_TO_SKIP:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

.field private final contentChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final debugOverlayDrawable:Lio/sentry/android/replay/util/DebugOverlayDrawable;

.field private final dstOverPaint$delegate:Lkotlin/Lazy;

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final frameInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

.field private final markContentChanged:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final maskRenderer:Lio/sentry/android/replay/util/MaskRenderer;

.field private final options:Lio/sentry/SentryOptions;

.field private final prescaledMatrix$delegate:Lkotlin/Lazy;

.field private final screenshot:Landroid/graphics/Bitmap;

.field private final screenshotCanvas$delegate:Lkotlin/Lazy;

.field private final screenshotRecorderCallback:Lio/sentry/android/replay/ScreenshotRecorderCallback;

.field private final svLocation:[I

.field private final tmpDstRect:Landroid/graphics/RectF;

.field private final tmpSrcRect:Landroid/graphics/Rect;

.field private final unstableCaptures:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final windowLocation:[I


# direct methods
.method public static synthetic $r8$lambda$18VS4kA6JEys3t05yvc5J8sDnfM(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->applyMaskingAndNotify$lambda$0(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BXZ8lYuGk-6VivjdpAXe_-mPLGs(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/graphics/Bitmap;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;IIILjava/util/concurrent/atomic/AtomicInteger;Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;IIZI)V
    .locals 0

    invoke-static/range {p0 .. p12}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->captureSurfaceViews$lambda$0(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/graphics/Bitmap;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;IIILjava/util/concurrent/atomic/AtomicInteger;Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;IIZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$VeONQWd8zu_iTcjAPCfDWvK8D50(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->scheduleCleanup$lambda$0(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZoKkpjJH0B8rdutZStRIL1j-qpI(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;IILandroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Z)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->compositeSurfaceViewsAndMask$lambda$0(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;IILandroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$c1D2-5IQ5HjjX9G-NL_yKXV8Vxw(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->capture$lambda$0$0(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$j9ZYDCnz67tEZkMmPiPM_e9wc14(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->emitLastScreenshot$lambda$0(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uf9QNH33xOjqh7eUqMmFAZTon6A(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->capture$lambda$0(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->Companion:Lio/sentry/android/replay/screenshot/PixelCopyStrategy$Companion;

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->$stable:I

    return-void
.end method

.method public constructor <init>(Lio/sentry/android/replay/ExecutorProvider;Lio/sentry/android/replay/ScreenshotRecorderCallback;Lio/sentry/SentryOptions;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lio/sentry/android/replay/util/DebugOverlayDrawable;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p1, "executorProvider"    # Lio/sentry/android/replay/ExecutorProvider;
    .param p2, "screenshotRecorderCallback"    # Lio/sentry/android/replay/ScreenshotRecorderCallback;
    .param p3, "options"    # Lio/sentry/SentryOptions;
    .param p4, "config"    # Lio/sentry/android/replay/ScreenshotRecorderConfig;
    .param p5, "debugOverlayDrawable"    # Lio/sentry/android/replay/util/DebugOverlayDrawable;
    .param p6, "markContentChanged"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/android/replay/ExecutorProvider;",
            "Lio/sentry/android/replay/ScreenshotRecorderCallback;",
            "Lio/sentry/SentryOptions;",
            "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
            "Lio/sentry/android/replay/util/DebugOverlayDrawable;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "executorProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugOverlayDrawable"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "markContentChanged"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->screenshotRecorderCallback:Lio/sentry/android/replay/ScreenshotRecorderCallback;

    .line 35
    iput-object p3, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->options:Lio/sentry/SentryOptions;

    .line 36
    iput-object p4, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 37
    iput-object p5, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->debugOverlayDrawable:Lio/sentry/android/replay/util/DebugOverlayDrawable;

    .line 40
    iput-object p6, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->markContentChanged:Lkotlin/jvm/functions/Function0;

    .line 51
    invoke-interface {p1}, Lio/sentry/android/replay/ExecutorProvider;->getExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 52
    invoke-interface {p1}, Lio/sentry/android/replay/ExecutorProvider;->getMainLooperHandler()Lio/sentry/android/replay/util/MainLooperHandler;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    .line 54
    nop

    .line 55
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    invoke-virtual {v0}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingWidth()I

    move-result v0

    .line 56
    iget-object v1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    invoke-virtual {v1}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingHeight()I

    move-result v1

    .line 57
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryReplayOptions;->isCaptureSurfaceViews()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 60
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 54
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->screenshot:Landroid/graphics/Bitmap;

    .line 64
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$prescaledMatrix$2;

    invoke-direct {v1, p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$prescaledMatrix$2;-><init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->prescaledMatrix$delegate:Lkotlin/Lazy;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v0, Lio/sentry/android/replay/util/MaskRenderer;

    invoke-direct {v0}, Lio/sentry/android/replay/util/MaskRenderer;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->maskRenderer:Lio/sentry/android/replay/util/MaskRenderer;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->contentChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->unstableCaptures:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->frameInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$dstOverPaint$2;->INSTANCE:Lio/sentry/android/replay/screenshot/PixelCopyStrategy$dstOverPaint$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->dstOverPaint$delegate:Lkotlin/Lazy;

    .line 73
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$screenshotCanvas$2;

    invoke-direct {v1, p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$screenshotCanvas$2;-><init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->screenshotCanvas$delegate:Lkotlin/Lazy;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->tmpSrcRect:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->tmpDstRect:Landroid/graphics/RectF;

    .line 76
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->windowLocation:[I

    .line 77
    new-array v0, v0, [I

    iput-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->svLocation:[I

    .line 32
    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/android/replay/ExecutorProvider;Lio/sentry/android/replay/ScreenshotRecorderCallback;Lio/sentry/SentryOptions;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lio/sentry/android/replay/util/DebugOverlayDrawable;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    .line 32
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 40
    sget-object p6, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$1;->INSTANCE:Lio/sentry/android/replay/screenshot/PixelCopyStrategy$1;

    check-cast p6, Lkotlin/jvm/functions/Function0;

    move-object v6, p6

    goto :goto_0

    .line 32
    :cond_0
    move-object v6, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;-><init>(Lio/sentry/android/replay/ExecutorProvider;Lio/sentry/android/replay/ScreenshotRecorderCallback;Lio/sentry/SentryOptions;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lio/sentry/android/replay/util/DebugOverlayDrawable;Lkotlin/jvm/functions/Function0;)V

    .line 41
    return-void
.end method

.method public static final synthetic access$getConfig$p(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;)Lio/sentry/android/replay/ScreenshotRecorderConfig;
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    .line 31
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    return-object v0
.end method

.method public static final synthetic access$getScreenshot$p(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    .line 31
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->screenshot:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private final applyMaskingAndNotify(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Z)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewHierarchy"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .param p3, "resetUnstableCaptures"    # Z

    .line 201
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->maskRenderer:Lio/sentry/android/replay/util/MaskRenderer;

    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->screenshot:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->getPrescaledMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v0, v2, p2, v3}, Lio/sentry/android/replay/util/MaskRenderer;->renderMasks(Landroid/graphics/Bitmap;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object v0

    .line 208
    .local v0, "debugMasks":Ljava/util/List;
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/ReplayController;->isDebugMaskingOverlayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    new-instance v3, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1, v0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda3;-><init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lio/sentry/android/replay/util/MainLooperHandler;->post(Ljava/lang/Runnable;)Z

    .line 217
    :cond_1
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->screenshotRecorderCallback:Lio/sentry/android/replay/ScreenshotRecorderCallback;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->screenshot:Landroid/graphics/Bitmap;

    invoke-interface {v2, v3}, Lio/sentry/android/replay/ScreenshotRecorderCallback;->onScreenshotRecorded(Landroid/graphics/Bitmap;)V

    .line 218
    :cond_2
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 219
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->contentChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 220
    if-eqz p3, :cond_3

    .line 221
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->unstableCaptures:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 223
    :cond_3
    return-void

    .line 202
    .end local v0    # "debugMasks":Ljava/util/List;
    :cond_4
    :goto_0
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "PixelCopyStrategy is closed, skipping masking"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method private static final applyMaskingAndNotify$lambda$0(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;Ljava/util/List;)V
    .locals 2
    .param p0, "this$0"    # Lio/sentry/android/replay/screenshot/PixelCopyStrategy;
    .param p1, "$root"    # Landroid/view/View;
    .param p2, "$debugMasks"    # Ljava/util/List;

    .line 210
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->debugOverlayDrawable:Lio/sentry/android/replay/util/DebugOverlayDrawable;

    invoke-virtual {v0}, Lio/sentry/android/replay/util/DebugOverlayDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->debugOverlayDrawable:Lio/sentry/android/replay/util/DebugOverlayDrawable;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->debugOverlayDrawable:Lio/sentry/android/replay/util/DebugOverlayDrawable;

    invoke-virtual {v0, p2}, Lio/sentry/android/replay/util/DebugOverlayDrawable;->updateMasks(Ljava/util/List;)V

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 215
    return-void
.end method

.method private static final capture$lambda$0(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;I)V
    .locals 7
    .param p0, "this$0"    # Lio/sentry/android/replay/screenshot/PixelCopyStrategy;
    .param p1, "$root"    # Landroid/view/View;
    .param p2, "copyResult"    # I

    .line 107
    const-string v0, "getSessionReplay(...)"

    iget-object v1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 108
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "PixelCopyStrategy is closed, ignoring capture result"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->finishFrame()V

    .line 110
    return-void

    .line 113
    :cond_0
    if-eqz p2, :cond_1

    .line 114
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Failed to capture replay recording: %d"

    invoke-interface {v0, v1, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->unstableCaptures:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 116
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 117
    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->finishFrame()V

    .line 118
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->contentChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 122
    .local v1, "changedDuringCapture":Z
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->shouldSkipUnstableCapture()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->finishFrame()V

    .line 124
    return-void

    .line 129
    :cond_2
    nop

    .line 131
    :try_start_0
    sget-object v3, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->Companion:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;

    iget-object v4, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lio/sentry/SentryMaskingOptions;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5, v2, v4}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;->fromView(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ILio/sentry/SentryMaskingOptions;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    move-result-object v3

    .line 133
    .local v3, "viewHierarchy":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    iget-object v4, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryReplayOptions;->isCaptureSurfaceViews()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 134
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    goto :goto_0

    .line 136
    :cond_3
    nop

    .line 133
    :goto_0
    nop

    .line 132
    nop

    .line 138
    .local v5, "surfaceViewNodes":Ljava/util/List;
    iget-object v4, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lio/sentry/SentryMaskingOptions;

    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    const-string v6, "getLogger(...)"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3, v4, v0, v5}, Lio/sentry/android/replay/util/ViewsKt;->traverse(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/SentryMaskingOptions;Lio/sentry/ILogger;Ljava/util/List;)V

    .line 140
    move-object v0, v5

    check-cast v0, Ljava/util/Collection;

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v4

    :goto_2
    if-eqz v0, :cond_6

    .line 142
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 143
    new-instance v2, Lio/sentry/android/replay/util/ReplayRunnable;

    const-string v4, "screenshot_recorder.mask"

    .line 142
    new-instance v6, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, p1, v3, v1}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda4;-><init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Z)V

    .line 143
    invoke-direct {v2, v4, v6}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 142
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 141
    nop

    .line 155
    .local v0, "submitted":Ljava/util/concurrent/Future;
    if-nez v0, :cond_8

    .line 156
    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->finishFrame()V

    .end local v0    # "submitted":Ljava/util/concurrent/Future;
    goto :goto_3

    .line 161
    :cond_6
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->markContentChanged:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 162
    nop

    .line 163
    nop

    .line 164
    nop

    .line 165
    nop

    .line 166
    if-nez v1, :cond_7

    move v2, v4

    .line 162
    :cond_7
    invoke-direct {p0, p1, v5, v3, v2}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->captureSurfaceViews(Landroid/view/View;Ljava/util/List;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "viewHierarchy":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .end local v5    # "surfaceViewNodes":Ljava/util/List;
    goto :goto_3

    .line 169
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Failed to process replay frame"

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->finishFrame()V

    .line 176
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_8
    :goto_3
    return-void
.end method

.method private static final capture$lambda$0$0(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Z)V
    .locals 1
    .param p0, "this$0"    # Lio/sentry/android/replay/screenshot/PixelCopyStrategy;
    .param p1, "$root"    # Landroid/view/View;
    .param p2, "$viewHierarchy"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .param p3, "$changedDuringCapture"    # Z

    .line 144
    nop

    .line 145
    nop

    .line 146
    nop

    .line 147
    nop

    .line 148
    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->applyMaskingAndNotify(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->finishFrame()V

    .line 152
    nop

    .line 153
    return-void

    .line 151
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->finishFrame()V

    throw v0
.end method

.method private final captureSurfaceViews(Landroid/view/View;Ljava/util/List;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Z)V
    .locals 20
    .param p1, "root"    # Landroid/view/View;
    .param p2, "surfaceViewNodes"    # Ljava/util/List;
    .param p3, "viewHierarchy"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .param p4, "resetUnstableCaptures"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;",
            ">;",
            "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
            "Z)V"
        }
    .end annotation

    .line 234
    move-object/from16 v2, p0

    iget-object v0, v2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->windowLocation:[I

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 235
    iget-object v0, v2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->windowLocation:[I

    const/4 v13, 0x0

    aget v6, v0, v13

    .line 236
    .local v6, "windowX":I
    iget-object v0, v2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->windowLocation:[I

    const/4 v14, 0x1

    aget v7, v0, v14

    .line 238
    .local v7, "windowY":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;

    .line 239
    .local v4, "captures":[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 254
    .local v1, "remaining":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v0, v13

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v3, v4

    .end local v4    # "captures":[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    .local v3, "captures":[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    move v4, v0

    .local v4, "index":I
    add-int/lit8 v16, v0, 0x1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;

    .line 255
    .local v17, "node":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;
    invoke-virtual/range {v17 .. v17}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;->getSurfaceViewRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/SurfaceView;

    .line 257
    .local v5, "surfaceView":Landroid/view/SurfaceView;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    move-object/from16 v18, v0

    .line 258
    .local v18, "surface":Landroid/view/Surface;
    if-eqz v5, :cond_3

    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    move v9, v4

    move-object v13, v5

    goto/16 :goto_3

    .line 263
    :cond_1
    const/4 v8, 0x0

    .line 264
    .local v8, "svBitmap":Landroid/graphics/Bitmap;
    nop

    .line 266
    :try_start_0
    invoke-virtual {v5}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 265
    move-object/from16 v19, v0

    .line 267
    .end local v8    # "svBitmap":Landroid/graphics/Bitmap;
    .local v19, "svBitmap":Landroid/graphics/Bitmap;
    nop

    .line 269
    .local v0, "bitmapToCapture":Landroid/graphics/Bitmap;
    :try_start_1
    iget-object v8, v2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->svLocation:[I

    invoke-virtual {v5, v8}, Landroid/view/SurfaceView;->getLocationOnScreen([I)V

    .line 270
    iget-object v8, v2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->svLocation:[I

    aget v8, v8, v13

    .line 271
    .local v8, "capturedX":I
    iget-object v9, v2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->svLocation:[I

    aget v9, v9, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 274
    .local v9, "capturedY":I
    nop

    .line 275
    nop

    .line 276
    nop

    .line 273
    move-object v2, v0

    .end local v0    # "bitmapToCapture":Landroid/graphics/Bitmap;
    .local v2, "bitmapToCapture":Landroid/graphics/Bitmap;
    :try_start_2
    new-instance v0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v12, p4

    move-object v13, v5

    move v10, v6

    move v11, v7

    move v5, v8

    move v6, v9

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object v7, v1

    move-object/from16 v1, p0

    .end local v1    # "remaining":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v8    # "capturedX":I
    .end local v9    # "capturedY":I
    .local v5, "capturedX":I
    .local v6, "capturedY":I
    .local v7, "remaining":Ljava/util/concurrent/atomic/AtomicInteger;
    .local v10, "windowX":I
    .local v11, "windowY":I
    .local v13, "surfaceView":Landroid/view/SurfaceView;
    :try_start_3
    invoke-direct/range {v0 .. v12}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/graphics/Bitmap;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;IIILjava/util/concurrent/atomic/AtomicInteger;Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;IIZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v8, v0

    move-object v0, v2

    move v9, v4

    move v4, v6

    move v6, v10

    move-object v2, v1

    move-object v1, v7

    move v7, v11

    .line 292
    .end local v2    # "bitmapToCapture":Landroid/graphics/Bitmap;
    .end local v10    # "windowX":I
    .end local v11    # "windowY":I
    .restart local v0    # "bitmapToCapture":Landroid/graphics/Bitmap;
    .restart local v1    # "remaining":Ljava/util/concurrent/atomic/AtomicInteger;
    .local v4, "capturedY":I
    .local v6, "windowX":I
    .local v7, "windowY":I
    .local v9, "index":I
    :try_start_4
    iget-object v10, v2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    invoke-virtual {v10}, Lio/sentry/android/replay/util/MainLooperHandler;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 273
    invoke-static {v13, v0, v8, v10}, Landroid/view/PixelCopy;->request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 296
    const/4 v0, 0x0

    .end local v4    # "capturedY":I
    .end local v5    # "capturedX":I
    .end local v19    # "svBitmap":Landroid/graphics/Bitmap;
    .local v0, "svBitmap":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 297
    .end local v0    # "svBitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "svBitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v1    # "remaining":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v6    # "windowX":I
    .end local v9    # "index":I
    .local v4, "index":I
    .local v7, "remaining":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v10    # "windowX":I
    .restart local v11    # "windowY":I
    :catchall_1
    move-exception v0

    move-object v2, v1

    move v9, v4

    move-object v1, v7

    move v6, v10

    move v7, v11

    .end local v4    # "index":I
    .end local v10    # "windowX":I
    .end local v11    # "windowY":I
    .restart local v1    # "remaining":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v6    # "windowX":I
    .local v7, "windowY":I
    .restart local v9    # "index":I
    goto :goto_2

    .end local v9    # "index":I
    .end local v13    # "surfaceView":Landroid/view/SurfaceView;
    .restart local v4    # "index":I
    .local v5, "surfaceView":Landroid/view/SurfaceView;
    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    move v9, v4

    move-object v13, v5

    .end local v4    # "index":I
    .end local v5    # "surfaceView":Landroid/view/SurfaceView;
    .restart local v9    # "index":I
    .restart local v13    # "surfaceView":Landroid/view/SurfaceView;
    goto :goto_2

    .end local v9    # "index":I
    .end local v13    # "surfaceView":Landroid/view/SurfaceView;
    .restart local v4    # "index":I
    .restart local v5    # "surfaceView":Landroid/view/SurfaceView;
    :catchall_3
    move-exception v0

    move v9, v4

    move-object v13, v5

    .end local v4    # "index":I
    .end local v5    # "surfaceView":Landroid/view/SurfaceView;
    .restart local v9    # "index":I
    .restart local v13    # "surfaceView":Landroid/view/SurfaceView;
    goto :goto_2

    .end local v9    # "index":I
    .end local v13    # "surfaceView":Landroid/view/SurfaceView;
    .end local v19    # "svBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "index":I
    .restart local v5    # "surfaceView":Landroid/view/SurfaceView;
    .local v8, "svBitmap":Landroid/graphics/Bitmap;
    :catchall_4
    move-exception v0

    move v9, v4

    move-object v13, v5

    move-object/from16 v19, v8

    .line 298
    .end local v4    # "index":I
    .end local v5    # "surfaceView":Landroid/view/SurfaceView;
    .end local v8    # "svBitmap":Landroid/graphics/Bitmap;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v9    # "index":I
    .restart local v13    # "surfaceView":Landroid/view/SurfaceView;
    .restart local v19    # "svBitmap":Landroid/graphics/Bitmap;
    :goto_2
    iget-object v4, v2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v8, "Failed to capture SurfaceView"

    invoke-interface {v4, v5, v8, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 300
    :cond_2
    move-object/from16 v5, p3

    move/from16 v8, p4

    move-object v4, v3

    move-object/from16 v3, p1

    .end local v3    # "captures":[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    .local v4, "captures":[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    invoke-static/range {v1 .. v8}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->captureSurfaceViews$onCaptureComplete(Ljava/util/concurrent/atomic/AtomicInteger;Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;IIZ)V

    move-object v3, v4

    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v4    # "captures":[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    .end local v13    # "surfaceView":Landroid/view/SurfaceView;
    .end local v18    # "surface":Landroid/view/Surface;
    .end local v19    # "svBitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "captures":[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    goto :goto_4

    .line 258
    .end local v9    # "index":I
    .local v4, "index":I
    .restart local v5    # "surfaceView":Landroid/view/SurfaceView;
    .restart local v18    # "surface":Landroid/view/Surface;
    :cond_3
    move v9, v4

    move-object v13, v5

    .line 259
    .end local v4    # "index":I
    .end local v5    # "surfaceView":Landroid/view/SurfaceView;
    .restart local v9    # "index":I
    .restart local v13    # "surfaceView":Landroid/view/SurfaceView;
    :goto_3
    move-object/from16 v2, p0

    move-object/from16 v5, p3

    move/from16 v8, p4

    move-object v4, v3

    move-object/from16 v3, p1

    .end local v3    # "captures":[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    .local v4, "captures":[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    invoke-static/range {v1 .. v8}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->captureSurfaceViews$onCaptureComplete(Ljava/util/concurrent/atomic/AtomicInteger;Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;IIZ)V

    .line 260
    move-object v3, v4

    .line 254
    .end local v4    # "captures":[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    .end local v9    # "index":I
    .end local v13    # "surfaceView":Landroid/view/SurfaceView;
    .end local v17    # "node":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;
    .end local v18    # "surface":Landroid/view/Surface;
    .restart local v3    # "captures":[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    :goto_4
    move-object/from16 v2, p0

    move-object v4, v3

    move/from16 v0, v16

    const/4 v13, 0x0

    move-object/from16 v3, p1

    goto/16 :goto_0

    .line 303
    .end local v3    # "captures":[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    .restart local v4    # "captures":[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    :cond_4
    return-void
.end method

.method private static final captureSurfaceViews$lambda$0(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/graphics/Bitmap;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;IIILjava/util/concurrent/atomic/AtomicInteger;Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;IIZI)V
    .locals 9
    .param p0, "this$0"    # Lio/sentry/android/replay/screenshot/PixelCopyStrategy;
    .param p1, "$bitmapToCapture"    # Landroid/graphics/Bitmap;
    .param p2, "$captures"    # [Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    .param p3, "$index"    # I
    .param p4, "$capturedX"    # I
    .param p5, "$capturedY"    # I
    .param p6, "$remaining"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p7, "$root"    # Landroid/view/View;
    .param p8, "$viewHierarchy"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .param p9, "$windowX"    # I
    .param p10, "$windowY"    # I
    .param p11, "$resetUnstableCaptures"    # Z
    .param p12, "copyResult"    # I

    .line 277
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 281
    move-object v2, p0

    move-object v4, p2

    move-object v1, p6

    move-object/from16 v3, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    invoke-static/range {v1 .. v8}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->captureSurfaceViews$onCaptureComplete(Ljava/util/concurrent/atomic/AtomicInteger;Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;IIZ)V

    .line 282
    return-void

    .line 284
    :cond_0
    if-nez p12, :cond_1

    .line 285
    new-instance v0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;

    invoke-direct {v0, p1, p4, p5}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;-><init>(Landroid/graphics/Bitmap;II)V

    aput-object v0, p2, p3

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 288
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Failed to capture SurfaceView: %d"

    invoke-interface {v0, v1, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    :goto_0
    move-object v2, p0

    move-object v4, p2

    move-object v1, p6

    move-object/from16 v3, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    invoke-static/range {v1 .. v8}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->captureSurfaceViews$onCaptureComplete(Ljava/util/concurrent/atomic/AtomicInteger;Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;IIZ)V

    .line 291
    return-void
.end method

.method private static final captureSurfaceViews$onCaptureComplete(Ljava/util/concurrent/atomic/AtomicInteger;Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;IIZ)V
    .locals 1
    .param p0, "remaining"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "this$0"    # Lio/sentry/android/replay/screenshot/PixelCopyStrategy;
    .param p2, "$root"    # Landroid/view/View;
    .param p3, "captures"    # [Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    .param p4, "$viewHierarchy"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .param p5, "windowX"    # I
    .param p6, "windowY"    # I
    .param p7, "$resetUnstableCaptures"    # Z

    .line 242
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 243
    nop

    .line 244
    nop

    .line 245
    nop

    .line 246
    nop

    .line 247
    nop

    .line 248
    nop

    .line 249
    nop

    .line 243
    invoke-direct/range {p1 .. p7}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->compositeSurfaceViewsAndMask(Landroid/view/View;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;IIZ)V

    .line 252
    :cond_0
    return-void
.end method

.method private final cleanUpIfIdle()V
    .locals 3

    .line 416
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->frameInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->scheduleCleanup()V

    .line 419
    :cond_0
    return-void
.end method

.method private final compositeSurfaceViewsAndMask(Landroid/view/View;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;IIZ)V
    .locals 10
    .param p1, "root"    # Landroid/view/View;
    .param p2, "captures"    # [Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    .param p3, "viewHierarchy"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .param p4, "windowX"    # I
    .param p5, "windowY"    # I
    .param p6, "resetUnstableCaptures"    # Z

    .line 314
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 315
    new-instance v1, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 314
    new-instance v2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda1;

    move-object v3, p0

    move-object v7, p1

    move-object v4, p2

    move-object v8, p3

    move v5, p4

    move v6, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;IILandroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Z)V

    .line 315
    const-string v5, "screenshot_recorder.composite"

    invoke-direct {v1, v5, v2}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 314
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 313
    nop

    .line 349
    .local v0, "submitted":Ljava/util/concurrent/Future;
    if-nez v0, :cond_0

    .line 350
    invoke-direct {p0, p2}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->recycleCaptures([Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;)V

    .line 351
    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->finishFrame()V

    .line 353
    :cond_0
    return-void
.end method

.method private static final compositeSurfaceViewsAndMask$lambda$0(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;IILandroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Z)V
    .locals 17
    .param p0, "this$0"    # Lio/sentry/android/replay/screenshot/PixelCopyStrategy;
    .param p1, "$captures"    # [Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    .param p2, "$windowX"    # I
    .param p3, "$windowY"    # I
    .param p4, "$root"    # Landroid/view/View;
    .param p5, "$viewHierarchy"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .param p6, "$resetUnstableCaptures"    # Z

    .line 316
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 317
    :try_start_0
    iget-object v0, v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    iget-object v0, v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    goto :goto_1

    .line 323
    :cond_0
    array-length v0, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v2, v3

    .line 324
    .local v4, "capture":Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    if-eqz v4, :cond_1

    .line 325
    invoke-virtual {v4}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 328
    invoke-direct {v1}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->getScreenshotCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    .line 329
    invoke-direct {v1}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->getDstOverPaint()Landroid/graphics/Paint;

    move-result-object v7

    .line 330
    iget-object v8, v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->tmpSrcRect:Landroid/graphics/Rect;

    .line 331
    iget-object v9, v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->tmpDstRect:Landroid/graphics/RectF;

    .line 332
    invoke-virtual {v4}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 333
    invoke-virtual {v4}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->getX()I

    move-result v11

    .line 334
    invoke-virtual {v4}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->getY()I

    move-result v12

    .line 335
    nop

    .line 336
    nop

    .line 337
    iget-object v5, v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    invoke-virtual {v5}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getScaleFactorX()F

    move-result v15

    .line 338
    iget-object v5, v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    invoke-virtual {v5}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getScaleFactorY()F

    move-result v16

    .line 327
    move/from16 v13, p2

    move/from16 v14, p3

    invoke-static/range {v6 .. v16}, Lio/sentry/android/replay/screenshot/PixelCopyStrategyKt;->compositeSurfaceViewInto(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Bitmap;IIIIFF)V

    .line 340
    invoke-virtual {v4}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 323
    .end local v4    # "capture":Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 343
    :cond_2
    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    :try_start_1
    invoke-direct {v1, v4, v5, v6}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->applyMaskingAndNotify(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    invoke-direct {v1}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->finishFrame()V

    .line 346
    nop

    .line 347
    return-void

    .line 317
    :cond_3
    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 318
    :goto_1
    :try_start_2
    iget-object v0, v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v7, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v8, "PixelCopyStrategy is closed, skipping compositing"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v7, v8, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    invoke-direct/range {p0 .. p1}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->recycleCaptures([Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    nop

    .line 345
    invoke-direct {v1}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->finishFrame()V

    .line 320
    return-void

    .line 345
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    :goto_2
    invoke-direct {v1}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->finishFrame()V

    throw v0
.end method

.method private static final emitLastScreenshot$lambda$0(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;)V
    .locals 2
    .param p0, "this$0"    # Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    .line 384
    nop

    .line 385
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->screenshotRecorderCallback:Lio/sentry/android/replay/ScreenshotRecorderCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->screenshot:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lio/sentry/android/replay/ScreenshotRecorderCallback;->onScreenshotRecorded(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->finishFrame()V

    .line 388
    nop

    .line 389
    return-void

    .line 387
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->finishFrame()V

    throw v0
.end method

.method private final finishFrame()V
    .locals 2

    .line 403
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->frameInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 404
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->cleanUpIfIdle()V

    .line 407
    :cond_0
    return-void
.end method

.method private final getDstOverPaint()Landroid/graphics/Paint;
    .locals 1

    .line 71
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->dstOverPaint$delegate:Lkotlin/Lazy;

    .line 72
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method private final getPrescaledMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 63
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->prescaledMatrix$delegate:Lkotlin/Lazy;

    .line 64
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    return-object v0
.end method

.method private final getScreenshotCanvas()Landroid/graphics/Canvas;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->screenshotCanvas$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas;

    return-object v0
.end method

.method private final recycleCaptures([Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;)V
    .locals 4
    .param p1, "captures"    # [Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;

    .line 356
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 357
    .local v2, "capture":Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 358
    invoke-virtual {v2}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 356
    .end local v2    # "capture":Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    :cond_1
    return-void
.end method

.method private final scheduleCleanup()V
    .locals 3

    .line 423
    new-instance v0, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 424
    nop

    .line 425
    nop

    .line 422
    new-instance v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda5;-><init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;)V

    .line 423
    const-string v2, "PixelCopyStrategy.close"

    invoke-direct {v0, v2, v1}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 422
    nop

    .line 439
    .local v0, "cleanup":Lio/sentry/android/replay/util/ReplayRunnable;
    iget-object v1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v2, v0

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    if-nez v1, :cond_0

    .line 440
    invoke-virtual {v0}, Lio/sentry/android/replay/util/ReplayRunnable;->run()V

    .line 442
    :cond_0
    return-void
.end method

.method private static final scheduleCleanup$lambda$0(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;)V
    .locals 3
    .param p0, "this$0"    # Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    .line 426
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 427
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->screenshot:Landroid/graphics/Bitmap;

    monitor-enter v0

    const/4 v1, 0x0

    .line 428
    .local v1, "$i$a$-synchronized-PixelCopyStrategy$scheduleCleanup$cleanup$1$1":I
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 429
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 431
    :cond_0
    nop

    .end local v1    # "$i$a$-synchronized-PixelCopyStrategy$scheduleCleanup$cleanup$1$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 433
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->maskRenderer:Lio/sentry/android/replay/util/MaskRenderer;

    invoke-virtual {v0}, Lio/sentry/android/replay/util/MaskRenderer;->close()V

    .line 434
    return-void
.end method

.method private final shouldSkipUnstableCapture()Z
    .locals 6

    .line 188
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->unstableCaptures:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    .line 189
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "Failed to determine view hierarchy, not capturing"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 191
    return v2

    .line 193
    :cond_0
    return v1
.end method


# virtual methods
.method public capture(Landroid/view/View;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Lio/sentry/android/replay/WindowsKt;->getPhoneWindow(Landroid/view/View;)Landroid/view/Window;

    move-result-object v0

    .line 84
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 85
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Window is invalid, not capturing screenshot"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    return-void

    .line 89
    :cond_0
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->frameInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "PixelCopyStrategy capture is already in flight, skipping"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->markContentChanged:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 92
    return-void

    .line 95
    :cond_1
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "PixelCopyStrategy is closed, not capturing screenshot"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->finishFrame()V

    .line 98
    return-void

    .line 101
    :cond_2
    nop

    .line 102
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->contentChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 104
    nop

    .line 105
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->screenshot:Landroid/graphics/Bitmap;

    .line 106
    nop

    .line 103
    new-instance v3, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;)V

    .line 177
    iget-object v4, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    invoke-virtual {v4}, Lio/sentry/android/replay/util/MainLooperHandler;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 103
    invoke-static {v0, v2, v3, v4}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Failed to capture replay recording"

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    iget-object v3, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->unstableCaptures:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 182
    iget-object v3, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 183
    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->finishFrame()V

    .line 185
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public close()V
    .locals 2

    .line 397
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 398
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->unstableCaptures:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 399
    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->cleanUpIfIdle()V

    .line 400
    return-void
.end method

.method public emitLastScreenshot()V
    .locals 4

    .line 372
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->frameInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    return-void

    .line 375
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->lastCaptureSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 383
    new-instance v1, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 382
    new-instance v2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda6;-><init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;)V

    .line 383
    const-string v3, "PixelCopyStrategy.emit"

    invoke-direct {v1, v3, v2}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 382
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 381
    nop

    .line 391
    .local v0, "submitted":Ljava/util/concurrent/Future;
    if-nez v0, :cond_2

    .line 392
    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->finishFrame()V

    .line 394
    :cond_2
    return-void

    .line 376
    .end local v0    # "submitted":Ljava/util/concurrent/Future;
    :cond_3
    :goto_0
    invoke-direct {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->finishFrame()V

    .line 377
    return-void
.end method

.method public lastCaptureSuccessful()Z
    .locals 1

    .line 368
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onContentChanged()V
    .locals 2

    .line 364
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->contentChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 365
    return-void
.end method
