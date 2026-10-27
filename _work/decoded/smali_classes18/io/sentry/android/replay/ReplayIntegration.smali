.class public final Lio/sentry/android/replay/ReplayIntegration;
.super Ljava/lang/Object;
.source "ReplayIntegration.kt"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;
.implements Lio/sentry/android/replay/ScreenshotRecorderCallback;
.implements Lio/sentry/android/replay/gestures/TouchRecorderCallback;
.implements Lio/sentry/ReplayController;
.implements Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;
.implements Lio/sentry/transport/RateLimiter$IRateLimitObserver;
.implements Lio/sentry/android/replay/WindowCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/ReplayIntegration$Companion;,
        Lio/sentry/android/replay/ReplayIntegration$PreviousReplayHint;,
        Lio/sentry/android/replay/ReplayIntegration$ReplayExecutorServiceThreadFactory;,
        Lio/sentry/android/replay/ReplayIntegration$ReplayPersistingExecutorServiceThreadFactory;,
        Lio/sentry/android/replay/ReplayIntegration$ReplayState;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReplayIntegration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReplayIntegration.kt\nio/sentry/android/replay/ReplayIntegration\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,821:1\n617#1,2:822\n617#1,2:824\n617#1,2:826\n617#1,2:828\n617#1,2:830\n617#1,2:832\n617#1,2:834\n617#1,2:836\n617#1,2:838\n617#1,2:840\n617#1,2:842\n617#1,2:844\n617#1,2:846\n617#1,2:848\n1#2:850\n13409#3:851\n13410#3:855\n2632#4,3:852\n*S KotlinDebug\n*F\n+ 1 ReplayIntegration.kt\nio/sentry/android/replay/ReplayIntegration\n*L\n174#1:822,2\n178#1:824,2\n182#1:826,2\n208#1:828,2\n212#1:830,2\n272#1:832,2\n323#1:834,2\n375#1:836,2\n394#1:838,2\n438#1:840,2\n484#1:842,2\n507#1:844,2\n576#1:846,2\n593#1:848,2\n654#1:851\n654#1:855\n656#1:852,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u0006\n\u0002\u0008\u0012\u0008\u0007\u0018\u0000 \u00a2\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\u0008:\n\u00a2\u0001\u00a3\u0001\u00a4\u0001\u00a5\u0001\u00a6\u0001B\u0017\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rB\u0091\u0001\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f\u0012#\u0010\u0011\u001a\u001f\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0012\u0012%\u0008\u0002\u0010\u0018\u001a\u001f\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u0012\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\u0010\u0008\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u000f\u00a2\u0006\u0002\u0010 BN\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f\u0012%\u0008\u0002\u0010\u0011\u001a\u001f\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0012\u00a2\u0006\u0002\u0010!J>\u0010V\u001a\u00020W2\u0006\u0010X\u001a\u00020Y2\u0006\u0010Z\u001a\u00020\u00132$\u0010[\u001a \u0012\u0004\u0012\u00020\u001b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020]\u0012\u0004\u0012\u00020W0\u0012\u0012\u0004\u0012\u00020W0\\H\u0002J\u0017\u0010^\u001a\u00020\u00132\u0008\u0010_\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0002\u0010`J\u0008\u0010a\u001a\u00020WH\u0002J\u0012\u0010b\u001a\u00020W2\u0008\u0008\u0002\u0010c\u001a\u00020dH\u0002J\u0008\u0010e\u001a\u00020WH\u0016J\u0008\u0010f\u001a\u00020WH\u0002J\u0008\u0010g\u001a\u00020WH\u0016J\u0008\u0010h\u001a\u00020WH\u0016J\u0019\u0010i\u001a\u00020W2\u000e\u0008\u0004\u0010j\u001a\u0008\u0012\u0004\u0012\u00020W0\u000fH\u0082\u0008J\u0008\u0010k\u001a\u00020WH\u0002J\u0008\u0010l\u001a\u00020WH\u0016J\u0008\u0010m\u001a\u00020BH\u0016J\u0008\u0010n\u001a\u00020\u0013H\u0016J\u0008\u0010o\u001a\u00020\u0019H\u0016J\u0008\u0010p\u001a\u00020\u0019H\u0016J\u0008\u0010q\u001a\u00020WH\u0016J\u0010\u0010r\u001a\u00020W2\u0006\u0010s\u001a\u00020\u0019H\u0016J\u0008\u0010t\u001a\u00020WH\u0016J\u000e\u0010u\u001a\u00020W2\u0006\u0010v\u001a\u00020wJ\u0010\u0010x\u001a\u00020W2\u0006\u0010y\u001a\u00020.H\u0016J\u0010\u0010z\u001a\u00020W2\u0006\u0010{\u001a\u00020|H\u0016J\u0010\u0010}\u001a\u00020W2\u0006\u0010~\u001a\u00020\u007fH\u0016J\u001a\u0010}\u001a\u00020W2\u0007\u0010\u0080\u0001\u001a\u00020D2\u0007\u0010\u0081\u0001\u001a\u00020YH\u0016J\u0013\u0010\u0082\u0001\u001a\u00020W2\u0008\u0010\u0083\u0001\u001a\u00030\u0084\u0001H\u0016J\u001d\u0010\u0085\u0001\u001a\u00020W2\u0008\u0010\u0086\u0001\u001a\u00030\u0087\u00012\u0008\u0010\u0088\u0001\u001a\u00030\u0087\u0001H\u0016J\t\u0010\u0089\u0001\u001a\u00020WH\u0016J\t\u0010\u008a\u0001\u001a\u00020WH\u0002J\u0019\u0010\u008b\u0001\u001a\u00020W2\u0006\u0010P\u001a\u00020Q2\u0006\u00106\u001a\u000207H\u0016J\t\u0010\u008c\u0001\u001a\u00020WH\u0002J\u0012\u0010\u008d\u0001\u001a\u00020W2\u0007\u0010\u008e\u0001\u001a\u00020dH\u0016J\u0012\u0010\u008f\u0001\u001a\u00020W2\u0007\u0010\u0090\u0001\u001a\u00020\u0013H\u0016J\t\u0010\u0091\u0001\u001a\u00020WH\u0016J\t\u0010\u0092\u0001\u001a\u00020WH\u0002J\u001b\u0010\u0093\u0001\u001a\u00020\u00192\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u0001H\u0002\u00a2\u0006\u0003\u0010\u0096\u0001J\u0012\u0010\u0097\u0001\u001a\u00020W2\u0007\u0010\u0098\u0001\u001a\u00020BH\u0016J\u0012\u0010\u0099\u0001\u001a\u00020W2\u0007\u0010\u009a\u0001\u001a\u00020\u0019H\u0002J\t\u0010\u009b\u0001\u001a\u00020WH\u0016J\t\u0010\u009c\u0001\u001a\u00020WH\u0016J\u0011\u0010\u009d\u0001\u001a\u00020W2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\t\u0010\u009e\u0001\u001a\u00020WH\u0016J\u0014\u0010\u009f\u0001\u001a\u00020W2\t\u0008\u0002\u0010\u00a0\u0001\u001a\u00020\u0019H\u0002J\t\u0010\u00a1\u0001\u001a\u00020WH\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u00020%X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u001a\u0010(\u001a\u00020\u0019X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u000e\u0010-\u001a\u00020.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010/\u001a\u0008\u0012\u0004\u0012\u00020100X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u001a\u00104\u001a\u0008\u0012\u0004\u0012\u00020100X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00103R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u000207X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u00108\u001a\u0002018@X\u0080\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u0008;\u0010<*\u0004\u00089\u0010:R\u0014\u0010=\u001a\u0008\u0012\u0004\u0012\u00020?0>X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010@\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020BX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010C\u001a\u0004\u0018\u00010D8F\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010FR+\u0010\u0011\u001a\u001f\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\u0018\u001a\u001f\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010G\u001a\u0002018@X\u0080\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u0008I\u0010<*\u0004\u0008H\u0010:R\u001b\u0010J\u001a\u00020K8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008N\u0010O\u001a\u0004\u0008L\u0010MR\u0010\u0010P\u001a\u0004\u0018\u00010QX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010R\u001a\u0010\u0012\u000c\u0012\n U*\u0004\u0018\u00010T0T0SX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00a7\u0001"
    }
    d2 = {
        "Lio/sentry/android/replay/ReplayIntegration;",
        "Lio/sentry/Integration;",
        "Ljava/io/Closeable;",
        "Lio/sentry/android/replay/ScreenshotRecorderCallback;",
        "Lio/sentry/android/replay/gestures/TouchRecorderCallback;",
        "Lio/sentry/ReplayController;",
        "Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;",
        "Lio/sentry/transport/RateLimiter$IRateLimitObserver;",
        "Lio/sentry/android/replay/WindowCallback;",
        "context",
        "Landroid/content/Context;",
        "dateProvider",
        "Lio/sentry/transport/ICurrentDateProvider;",
        "(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;)V",
        "recorderProvider",
        "Lkotlin/Function0;",
        "Lio/sentry/android/replay/Recorder;",
        "replayCacheProvider",
        "Lkotlin/Function1;",
        "Lio/sentry/protocol/SentryId;",
        "Lkotlin/ParameterName;",
        "name",
        "replayId",
        "Lio/sentry/android/replay/ReplayCache;",
        "replayCaptureStrategyProvider",
        "",
        "isFullSession",
        "Lio/sentry/android/replay/capture/CaptureStrategy;",
        "mainLooperHandler",
        "Lio/sentry/android/replay/util/MainLooperHandler;",
        "gestureRecorderProvider",
        "Lio/sentry/android/replay/gestures/GestureRecorder;",
        "(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lio/sentry/android/replay/util/MainLooperHandler;Lkotlin/jvm/functions/Function0;)V",
        "(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V",
        "debugMaskingEnabled",
        "gestureRecorder",
        "isEnabled",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isEnabled$sentry_android_replay_release",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isManualPause",
        "isManualPause$sentry_android_replay_release",
        "()Z",
        "setManualPause$sentry_android_replay_release",
        "(Z)V",
        "lastKnownConnectionStatus",
        "Lio/sentry/IConnectionStatusProvider$ConnectionStatus;",
        "lazyPersistingExecutor",
        "Lkotlin/Lazy;",
        "Lio/sentry/android/replay/util/ReplayExecutorService;",
        "getLazyPersistingExecutor$sentry_android_replay_release",
        "()Lkotlin/Lazy;",
        "lazyReplayExecutor",
        "getLazyReplayExecutor$sentry_android_replay_release",
        "options",
        "Lio/sentry/SentryOptions;",
        "persistingExecutor",
        "getPersistingExecutor$sentry_android_replay_release$delegate",
        "(Lio/sentry/android/replay/ReplayIntegration;)Ljava/lang/Object;",
        "getPersistingExecutor$sentry_android_replay_release",
        "()Lio/sentry/android/replay/util/ReplayExecutorService;",
        "random",
        "Ljava/lang/ThreadLocal;",
        "Lio/sentry/util/Random;",
        "recorder",
        "replayBreadcrumbConverter",
        "Lio/sentry/ReplayBreadcrumbConverter;",
        "replayCacheDir",
        "Ljava/io/File;",
        "getReplayCacheDir",
        "()Ljava/io/File;",
        "replayExecutor",
        "getReplayExecutor$sentry_android_replay_release$delegate",
        "getReplayExecutor$sentry_android_replay_release",
        "rootViewsSpy",
        "Lio/sentry/android/replay/RootViewsSpy;",
        "getRootViewsSpy$sentry_android_replay_release",
        "()Lio/sentry/android/replay/RootViewsSpy;",
        "rootViewsSpy$delegate",
        "Lkotlin/Lazy;",
        "scopes",
        "Lio/sentry/IScopes;",
        "state",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Lio/sentry/android/replay/ReplayIntegration$ReplayState;",
        "kotlin.jvm.PlatformType",
        "captureCurrentReplay",
        "",
        "expectedGeneration",
        "",
        "expectedReplayId",
        "capture",
        "Lkotlin/Function2;",
        "Ljava/util/Date;",
        "captureReplay",
        "isTerminating",
        "(Ljava/lang/Boolean;)Lio/sentry/protocol/SentryId;",
        "checkCanRecord",
        "cleanupReplays",
        "unfinishedReplayId",
        "",
        "close",
        "closeInternal",
        "disableDebugMaskingOverlay",
        "enableDebugMaskingOverlay",
        "enqueueOnMainThread",
        "block",
        "finalizePreviousReplay",
        "flush",
        "getBreadcrumbConverter",
        "getReplayId",
        "isDebugMaskingOverlayEnabled",
        "isRecording",
        "onAppBackgrounded",
        "onAppForegrounded",
        "startNewSession",
        "onAppSessionEnded",
        "onConfigurationChanged",
        "config",
        "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "onConnectionStatusChanged",
        "status",
        "onRateLimitChanged",
        "rateLimiter",
        "Lio/sentry/transport/RateLimiter;",
        "onScreenshotRecorded",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "screenshot",
        "frameTimestamp",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "onWindowSizeChanged",
        "width",
        "",
        "height",
        "pause",
        "pauseInternal",
        "register",
        "registerRootViewListeners",
        "registerSegmentName",
        "segmentName",
        "registerTraceId",
        "traceId",
        "resume",
        "resumeInternal",
        "sample",
        "rate",
        "",
        "(Ljava/lang/Double;)Z",
        "setBreadcrumbConverter",
        "converter",
        "shutdownExecutors",
        "waitForTermination",
        "start",
        "startBuffering",
        "startInternal",
        "stop",
        "stopInternal",
        "resetManualPause",
        "unregisterRootViewListeners",
        "Companion",
        "PreviousReplayHint",
        "ReplayExecutorServiceThreadFactory",
        "ReplayPersistingExecutorServiceThreadFactory",
        "ReplayState",
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

.field private static final Companion:Lio/sentry/android/replay/ReplayIntegration$Companion;

.field private static final replayIdsOfThisProcess:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final dateProvider:Lio/sentry/transport/ICurrentDateProvider;

.field private debugMaskingEnabled:Z

.field private gestureRecorder:Lio/sentry/android/replay/gestures/GestureRecorder;

.field private gestureRecorderProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lio/sentry/android/replay/gestures/GestureRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private final isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isManualPause:Z

.field private lastKnownConnectionStatus:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

.field private final lazyPersistingExecutor:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lio/sentry/android/replay/util/ReplayExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyReplayExecutor:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lio/sentry/android/replay/util/ReplayExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

.field private options:Lio/sentry/SentryOptions;

.field private final random:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/sentry/util/Random;",
            ">;"
        }
    .end annotation
.end field

.field private recorder:Lio/sentry/android/replay/Recorder;

.field private final recorderProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lio/sentry/android/replay/Recorder;",
            ">;"
        }
    .end annotation
.end field

.field private replayBreadcrumbConverter:Lio/sentry/ReplayBreadcrumbConverter;

.field private final replayCacheProvider:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lio/sentry/protocol/SentryId;",
            "Lio/sentry/android/replay/ReplayCache;",
            ">;"
        }
    .end annotation
.end field

.field private replayCaptureStrategyProvider:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "+",
            "Lio/sentry/android/replay/capture/CaptureStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private final rootViewsSpy$delegate:Lkotlin/Lazy;

.field private scopes:Lio/sentry/IScopes;

.field private final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/sentry/android/replay/ReplayIntegration$ReplayState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3k77dxwNkzViqzgqDOutehk0Gds(Lio/sentry/android/replay/ReplayIntegration;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/android/replay/ReplayIntegration;->finalizePreviousReplay$lambda$0(Lio/sentry/android/replay/ReplayIntegration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7xxT-byWjmyNarE4gqLH9YiZp5Q(Lio/sentry/android/replay/ReplayIntegration$ReplayState;Lio/sentry/IScope;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/android/replay/ReplayIntegration;->captureReplay$lambda$0(Lio/sentry/android/replay/ReplayIntegration$ReplayState;Lio/sentry/IScope;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bwrru1cUSodyZDBjxgSsKGI06fk(Lio/sentry/protocol/SentryId;Lio/sentry/IScope;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/android/replay/ReplayIntegration;->captureCurrentReplay$lambda$0(Lio/sentry/protocol/SentryId;Lio/sentry/IScope;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KsVI1xbY4Jkvo3tzwEv3uChYhPQ(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/sentry/IScope;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/android/replay/ReplayIntegration;->onScreenshotRecorded$lambda$2(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/sentry/IScope;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lfwi9V4bVweVRvOKAiJT5Ii3aT4(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/sentry/IScope;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/android/replay/ReplayIntegration;->onScreenshotRecorded$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/sentry/IScope;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NmkKg5L9bKZES7CDG_C1l55zlDo(Lio/sentry/android/replay/ReplayIntegration;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/android/replay/ReplayIntegration;->close$lambda$0(Lio/sentry/android/replay/ReplayIntegration;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/sentry/android/replay/ReplayIntegration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/replay/ReplayIntegration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/android/replay/ReplayIntegration;->Companion:Lio/sentry/android/replay/ReplayIntegration$Companion;

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/ReplayIntegration;->$stable:I

    .line 85
    nop

    .line 86
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v0

    .line 87
    const-string v1, "maven:io.sentry:sentry-android-replay"

    const-string v2, "8.61.1"

    invoke-virtual {v0, v1, v2}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    nop

    .line 93
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lio/sentry/android/replay/ReplayIntegration;->replayIdsOfThisProcess:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dateProvider"    # Lio/sentry/transport/ICurrentDateProvider;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-static {p1}, Lio/sentry/android/replay/util/ContextKt;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1, v1}, Lio/sentry/android/replay/ReplayIntegration;-><init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dateProvider"    # Lio/sentry/transport/ICurrentDateProvider;
    .param p3, "recorderProvider"    # Lkotlin/jvm/functions/Function0;
    .param p4, "replayCacheProvider"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/sentry/transport/ICurrentDateProvider;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lio/sentry/android/replay/Recorder;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/sentry/protocol/SentryId;",
            "Lio/sentry/android/replay/ReplayCache;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->context:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lio/sentry/android/replay/ReplayIntegration;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 73
    iput-object p3, p0, Lio/sentry/android/replay/ReplayIntegration;->recorderProvider:Lkotlin/jvm/functions/Function0;

    .line 74
    iput-object p4, p0, Lio/sentry/android/replay/ReplayIntegration;->replayCacheProvider:Lkotlin/jvm/functions/Function1;

    .line 116
    sget-object v0, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->UNKNOWN:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lastKnownConnectionStatus:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 122
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->random:Ljava/lang/ThreadLocal;

    .line 123
    sget-object v0, Lio/sentry/android/replay/ReplayIntegration$rootViewsSpy$2;->INSTANCE:Lio/sentry/android/replay/ReplayIntegration$rootViewsSpy$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->rootViewsSpy$delegate:Lkotlin/Lazy;

    .line 124
    new-instance v0, Lio/sentry/android/replay/ReplayIntegration$lazyReplayExecutor$1;

    invoke-direct {v0, p0}, Lio/sentry/android/replay/ReplayIntegration$lazyReplayExecutor$1;-><init>(Lio/sentry/android/replay/ReplayIntegration;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lazyReplayExecutor:Lkotlin/Lazy;

    .line 128
    nop

    .line 129
    new-instance v0, Lio/sentry/android/replay/ReplayIntegration$lazyPersistingExecutor$1;

    invoke-direct {v0, p0}, Lio/sentry/android/replay/ReplayIntegration$lazyPersistingExecutor$1;-><init>(Lio/sentry/android/replay/ReplayIntegration;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lazyPersistingExecutor:Lkotlin/Lazy;

    .line 134
    nop

    .line 136
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 142
    invoke-static {}, Lio/sentry/NoOpReplayBreadcrumbConverter;->getInstance()Lio/sentry/NoOpReplayBreadcrumbConverter;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/sentry/ReplayBreadcrumbConverter;

    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->replayBreadcrumbConverter:Lio/sentry/ReplayBreadcrumbConverter;

    .line 144
    new-instance v0, Lio/sentry/android/replay/util/MainLooperHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/sentry/android/replay/util/MainLooperHandler;-><init>(Landroid/os/Looper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;-><init>(JLio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/capture/CaptureStrategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 70
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 70
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 73
    move-object p3, v0

    .line 70
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 74
    move-object p4, v0

    .line 70
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/sentry/android/replay/ReplayIntegration;-><init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lio/sentry/android/replay/util/MainLooperHandler;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dateProvider"    # Lio/sentry/transport/ICurrentDateProvider;
    .param p3, "recorderProvider"    # Lkotlin/jvm/functions/Function0;
    .param p4, "replayCacheProvider"    # Lkotlin/jvm/functions/Function1;
    .param p5, "replayCaptureStrategyProvider"    # Lkotlin/jvm/functions/Function1;
    .param p6, "mainLooperHandler"    # Lio/sentry/android/replay/util/MainLooperHandler;
    .param p7, "gestureRecorderProvider"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/sentry/transport/ICurrentDateProvider;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lio/sentry/android/replay/Recorder;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/sentry/protocol/SentryId;",
            "Lio/sentry/android/replay/ReplayCache;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "+",
            "Lio/sentry/android/replay/capture/CaptureStrategy;",
            ">;",
            "Lio/sentry/android/replay/util/MainLooperHandler;",
            "Lkotlin/jvm/functions/Function0<",
            "Lio/sentry/android/replay/gestures/GestureRecorder;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, Lio/sentry/android/replay/util/ContextKt;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lio/sentry/android/replay/ReplayIntegration;-><init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 111
    iput-object p5, p0, Lio/sentry/android/replay/ReplayIntegration;->replayCaptureStrategyProvider:Lkotlin/jvm/functions/Function1;

    .line 112
    if-nez p6, :cond_0

    new-instance v0, Lio/sentry/android/replay/util/MainLooperHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lio/sentry/android/replay/util/MainLooperHandler;-><init>(Landroid/os/Looper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object v0, p6

    :goto_0
    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    .line 113
    iput-object p7, p0, Lio/sentry/android/replay/ReplayIntegration;->gestureRecorderProvider:Lkotlin/jvm/functions/Function0;

    .line 114
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lio/sentry/android/replay/util/MainLooperHandler;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 102
    and-int/lit8 p9, p8, 0x10

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    .line 107
    move-object p5, v0

    .line 102
    :cond_0
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_1

    .line 108
    move-object p6, v0

    .line 102
    :cond_1
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_2

    .line 109
    move-object p8, v0

    goto :goto_0

    .line 102
    :cond_2
    move-object p8, p7

    :goto_0
    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lio/sentry/android/replay/ReplayIntegration;-><init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lio/sentry/android/replay/util/MainLooperHandler;Lkotlin/jvm/functions/Function0;)V

    .line 114
    return-void
.end method

.method public static final synthetic access$captureCurrentReplay(Lio/sentry/android/replay/ReplayIntegration;JLio/sentry/protocol/SentryId;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p0, "$this"    # Lio/sentry/android/replay/ReplayIntegration;
    .param p1, "expectedGeneration"    # J
    .param p3, "expectedReplayId"    # Lio/sentry/protocol/SentryId;
    .param p4, "capture"    # Lkotlin/jvm/functions/Function2;

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lio/sentry/android/replay/ReplayIntegration;->captureCurrentReplay(JLio/sentry/protocol/SentryId;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$checkCanRecord(Lio/sentry/android/replay/ReplayIntegration;)V
    .locals 0
    .param p0, "$this"    # Lio/sentry/android/replay/ReplayIntegration;

    .line 70
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->checkCanRecord()V

    return-void
.end method

.method public static final synthetic access$getOptions$p(Lio/sentry/android/replay/ReplayIntegration;)Lio/sentry/SentryOptions;
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/ReplayIntegration;

    .line 70
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    return-object v0
.end method

.method public static final synthetic access$getReplayIdsOfThisProcess$cp()Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1

    .line 70
    sget-object v0, Lio/sentry/android/replay/ReplayIntegration;->replayIdsOfThisProcess:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method public static final synthetic access$getState$p(Lio/sentry/android/replay/ReplayIntegration;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/ReplayIntegration;

    .line 70
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static final synthetic access$pauseInternal(Lio/sentry/android/replay/ReplayIntegration;)V
    .locals 0
    .param p0, "$this"    # Lio/sentry/android/replay/ReplayIntegration;

    .line 70
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->pauseInternal()V

    return-void
.end method

.method public static final synthetic access$resumeInternal(Lio/sentry/android/replay/ReplayIntegration;)V
    .locals 0
    .param p0, "$this"    # Lio/sentry/android/replay/ReplayIntegration;

    .line 70
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->resumeInternal()V

    return-void
.end method

.method public static final synthetic access$sample(Lio/sentry/android/replay/ReplayIntegration;Ljava/lang/Double;)Z
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/ReplayIntegration;
    .param p1, "rate"    # Ljava/lang/Double;

    .line 70
    invoke-direct {p0, p1}, Lio/sentry/android/replay/ReplayIntegration;->sample(Ljava/lang/Double;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$setLastKnownConnectionStatus$p(Lio/sentry/android/replay/ReplayIntegration;Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)V
    .locals 0
    .param p0, "$this"    # Lio/sentry/android/replay/ReplayIntegration;
    .param p1, "<set-?>"    # Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 70
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->lastKnownConnectionStatus:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    return-void
.end method

.method public static final synthetic access$startInternal(Lio/sentry/android/replay/ReplayIntegration;Z)V
    .locals 0
    .param p0, "$this"    # Lio/sentry/android/replay/ReplayIntegration;
    .param p1, "isFullSession"    # Z

    .line 70
    invoke-direct {p0, p1}, Lio/sentry/android/replay/ReplayIntegration;->startInternal(Z)V

    return-void
.end method

.method public static final synthetic access$stopInternal(Lio/sentry/android/replay/ReplayIntegration;Z)V
    .locals 0
    .param p0, "$this"    # Lio/sentry/android/replay/ReplayIntegration;
    .param p1, "resetManualPause"    # Z

    .line 70
    invoke-direct {p0, p1}, Lio/sentry/android/replay/ReplayIntegration;->stopInternal(Z)V

    return-void
.end method

.method private final captureCurrentReplay(JLio/sentry/protocol/SentryId;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .param p1, "expectedGeneration"    # J
    .param p3, "expectedReplayId"    # Lio/sentry/protocol/SentryId;
    .param p4, "capture"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/sentry/protocol/SentryId;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/sentry/android/replay/capture/CaptureStrategy;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Date;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    .line 338
    .local v1, "current":Lio/sentry/android/replay/ReplayIntegration$ReplayState;
    invoke-virtual {v1}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getCaptureStrategy()Lio/sentry/android/replay/capture/CaptureStrategy;

    move-result-object v0

    .line 339
    .local v0, "strategy":Lio/sentry/android/replay/capture/CaptureStrategy;
    invoke-virtual {v1, p1, p2, p3}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->matches(JLio/sentry/protocol/SentryId;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    .line 353
    :cond_0
    invoke-interface {v0}, Lio/sentry/android/replay/capture/CaptureStrategy;->convert()Lio/sentry/android/replay/capture/CaptureStrategy;

    move-result-object v6

    .line 354
    .local v6, "activeStrategy":Lio/sentry/android/replay/capture/CaptureStrategy;
    new-instance v2, Lio/sentry/android/replay/ReplayIntegration$captureCurrentReplay$2;

    invoke-direct {v2, v6}, Lio/sentry/android/replay/ReplayIntegration$captureCurrentReplay$2;-><init>(Lio/sentry/android/replay/capture/CaptureStrategy;)V

    invoke-interface {p4, v0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-interface {v6}, Lio/sentry/android/replay/capture/CaptureStrategy;->getCurrentReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v9

    .line 364
    .local v9, "replayId":Lio/sentry/protocol/SentryId;
    iget-object v10, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 365
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 366
    if-nez v9, :cond_1

    sget-object v2, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    move-object v5, v2

    goto :goto_0

    :cond_1
    move-object v5, v9

    :goto_0
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 367
    nop

    .line 365
    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v8}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->copy$default(Lio/sentry/android/replay/ReplayIntegration$ReplayState;JLio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/capture/CaptureStrategy;ILjava/lang/Object;)Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    move-result-object v2

    .line 364
    invoke-virtual {v10, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 370
    return-void

    .line 340
    .end local v6    # "activeStrategy":Lio/sentry/android/replay/capture/CaptureStrategy;
    .end local v9    # "replayId":Lio/sentry/protocol/SentryId;
    :cond_2
    :goto_1
    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v2, :cond_3

    new-instance v3, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda4;

    invoke-direct {v3, p3}, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda4;-><init>(Lio/sentry/protocol/SentryId;)V

    invoke-interface {v2, v3}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 345
    :cond_3
    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v2, :cond_4

    const-string v2, "options"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_4
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    .line 346
    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 347
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 345
    const-string v5, "Replay was stopped or restarted before capture could run, not capturing replay"

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method private static final captureCurrentReplay$lambda$0(Lio/sentry/protocol/SentryId;Lio/sentry/IScope;)V
    .locals 1
    .param p0, "$expectedReplayId"    # Lio/sentry/protocol/SentryId;
    .param p1, "it"    # Lio/sentry/IScope;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-interface {p1}, Lio/sentry/IScope;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-interface {p1, v0}, Lio/sentry/IScope;->setReplayId(Lio/sentry/protocol/SentryId;)V

    .line 344
    :cond_0
    return-void
.end method

.method private static final captureReplay$lambda$0(Lio/sentry/android/replay/ReplayIntegration$ReplayState;Lio/sentry/IScope;)V
    .locals 1
    .param p0, "$current"    # Lio/sentry/android/replay/ReplayIntegration$ReplayState;
    .param p1, "it"    # Lio/sentry/IScope;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/IScope;->setReplayId(Lio/sentry/protocol/SentryId;)V

    return-void
.end method

.method private final checkCanRecord()V
    .locals 4

    .line 625
    nop

    .line 626
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getCaptureStrategy()Lio/sentry/android/replay/capture/CaptureStrategy;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    if-eqz v0, :cond_3

    .line 627
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lastKnownConnectionStatus:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    sget-object v1, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    if-eq v0, v1, :cond_2

    .line 628
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->scopes:Lio/sentry/IScopes;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/IScopes;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v3, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    invoke-virtual {v0, v3}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 629
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/IScopes;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v3, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    invoke-virtual {v0, v3}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 631
    :cond_2
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->pauseInternal()V

    .line 633
    :cond_3
    return-void
.end method

.method private final cleanupReplays(Ljava/lang/String;)V
    .locals 23
    .param p1, "unfinishedReplayId"    # Ljava/lang/String;

    .line 652
    sget-object v0, Lio/sentry/android/replay/ReplayIntegration;->replayIdsOfThisProcess:Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v0, Ljava/util/Set;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 850
    const/4 v1, 0x0

    .line 652
    .local v1, "$i$a$-ifBlank-ReplayIntegration$cleanupReplays$keptReplayIds$1":I
    move-object v1, v3

    .end local v1    # "$i$a$-ifBlank-ReplayIntegration$cleanupReplays$keptReplayIds$1":I
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 653
    .local v0, "keptReplayIds":Ljava/util/Set;
    move-object/from16 v1, p0

    iget-object v2, v1, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v2, :cond_1

    const-string v2, "options"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .local v2, "cacheDir":Ljava/lang/String;
    const/4 v4, 0x0

    .line 654
    .local v4, "$i$a$-let-ReplayIntegration$cleanupReplays$1":I
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .local v5, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 851
    .local v6, "$i$f$forEach":I
    array-length v7, v5

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_7

    aget-object v10, v5, v9

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "file":Ljava/io/File;
    const/4 v12, 0x0

    .line 655
    .local v12, "$i$a$-forEach-ReplayIntegration$cleanupReplays$1$1":I
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    .line 656
    .local v13, "name":Ljava/lang/String;
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v14, "replay_"

    const/4 v15, 0x2

    invoke-static {v13, v14, v8, v15, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object v14, v0

    check-cast v14, Ljava/lang/Iterable;

    .local v14, "$this$none$iv":Ljava/lang/Iterable;
    const/16 v16, 0x0

    .line 852
    .local v16, "$i$f$none":I
    instance-of v3, v14, Ljava/util/Collection;

    const/16 v18, 0x1

    if-eqz v3, :cond_2

    move-object v3, v14

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v22, v0

    move-object/from16 v17, v2

    move v1, v8

    const/4 v2, 0x0

    goto :goto_2

    .line 853
    :cond_2
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .local v19, "element$iv":Ljava/lang/Object;
    move-object/from16 v20, v19

    check-cast v20, Ljava/lang/String;

    .local v20, "it":Ljava/lang/String;
    const/16 v21, 0x0

    .line 656
    .local v21, "$i$a$-none-ReplayIntegration$cleanupReplays$1$1$1":I
    move-object v8, v13

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v22, v0

    .end local v0    # "keptReplayIds":Ljava/util/Set;
    .local v22, "keptReplayIds":Ljava/util/Set;
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/CharSequence;

    move-object/from16 v17, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .end local v2    # "cacheDir":Ljava/lang/String;
    .local v17, "cacheDir":Ljava/lang/String;
    invoke-static {v8, v0, v1, v15, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    .line 853
    .end local v20    # "it":Ljava/lang/String;
    .end local v21    # "$i$a$-none-ReplayIntegration$cleanupReplays$1$1$1":I
    if-eqz v0, :cond_3

    move/from16 v18, v1

    goto :goto_2

    :cond_3
    move v8, v1

    move-object/from16 v2, v17

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    goto :goto_1

    .line 854
    .end local v17    # "cacheDir":Ljava/lang/String;
    .end local v19    # "element$iv":Ljava/lang/Object;
    .end local v22    # "keptReplayIds":Ljava/util/Set;
    .restart local v0    # "keptReplayIds":Ljava/util/Set;
    .restart local v2    # "cacheDir":Ljava/lang/String;
    :cond_4
    move-object/from16 v22, v0

    move-object/from16 v17, v2

    move v1, v8

    const/4 v2, 0x0

    .line 656
    .end local v0    # "keptReplayIds":Ljava/util/Set;
    .end local v2    # "cacheDir":Ljava/lang/String;
    .end local v14    # "$this$none$iv":Ljava/lang/Iterable;
    .end local v16    # "$i$f$none":I
    .restart local v17    # "cacheDir":Ljava/lang/String;
    .restart local v22    # "keptReplayIds":Ljava/util/Set;
    :goto_2
    if-eqz v18, :cond_6

    .line 657
    invoke-static {v11}, Lio/sentry/util/FileUtils;->deleteRecursively(Ljava/io/File;)Z

    goto :goto_3

    .line 656
    .end local v17    # "cacheDir":Ljava/lang/String;
    .end local v22    # "keptReplayIds":Ljava/util/Set;
    .restart local v0    # "keptReplayIds":Ljava/util/Set;
    .restart local v2    # "cacheDir":Ljava/lang/String;
    :cond_5
    move-object/from16 v22, v0

    move-object/from16 v17, v2

    move-object v2, v3

    move v1, v8

    .line 659
    .end local v0    # "keptReplayIds":Ljava/util/Set;
    .end local v2    # "cacheDir":Ljava/lang/String;
    .restart local v17    # "cacheDir":Ljava/lang/String;
    .restart local v22    # "keptReplayIds":Ljava/util/Set;
    :cond_6
    :goto_3
    nop

    .line 851
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "$i$a$-forEach-ReplayIntegration$cleanupReplays$1$1":I
    .end local v13    # "name":Ljava/lang/String;
    nop

    .end local v10    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move v8, v1

    move-object v3, v2

    move-object/from16 v2, v17

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 855
    .end local v17    # "cacheDir":Ljava/lang/String;
    .end local v22    # "keptReplayIds":Ljava/util/Set;
    .restart local v0    # "keptReplayIds":Ljava/util/Set;
    .restart local v2    # "cacheDir":Ljava/lang/String;
    :cond_7
    move-object/from16 v22, v0

    move-object/from16 v17, v2

    .end local v0    # "keptReplayIds":Ljava/util/Set;
    .end local v2    # "cacheDir":Ljava/lang/String;
    .end local v5    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$forEach":I
    .restart local v17    # "cacheDir":Ljava/lang/String;
    .restart local v22    # "keptReplayIds":Ljava/util/Set;
    goto :goto_4

    .line 654
    .end local v17    # "cacheDir":Ljava/lang/String;
    .end local v22    # "keptReplayIds":Ljava/util/Set;
    .restart local v0    # "keptReplayIds":Ljava/util/Set;
    .restart local v2    # "cacheDir":Ljava/lang/String;
    :cond_8
    move-object/from16 v22, v0

    move-object/from16 v17, v2

    .line 659
    .end local v0    # "keptReplayIds":Ljava/util/Set;
    .end local v2    # "cacheDir":Ljava/lang/String;
    .restart local v17    # "cacheDir":Ljava/lang/String;
    .restart local v22    # "keptReplayIds":Ljava/util/Set;
    :goto_4
    nop

    .end local v4    # "$i$a$-let-ReplayIntegration$cleanupReplays$1":I
    .end local v17    # "cacheDir":Ljava/lang/String;
    goto :goto_5

    .line 653
    .end local v22    # "keptReplayIds":Ljava/util/Set;
    .restart local v0    # "keptReplayIds":Ljava/util/Set;
    :cond_9
    move-object/from16 v22, v0

    .end local v0    # "keptReplayIds":Ljava/util/Set;
    .restart local v22    # "keptReplayIds":Ljava/util/Set;
    :goto_5
    nop

    .line 661
    return-void
.end method

.method static synthetic cleanupReplays$default(Lio/sentry/android/replay/ReplayIntegration;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 649
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/android/replay/ReplayIntegration;->cleanupReplays(Ljava/lang/String;)V

    return-void
.end method

.method private static final close$lambda$0(Lio/sentry/android/replay/ReplayIntegration;Ljava/util/concurrent/CountDownLatch;)V
    .locals 2
    .param p0, "this$0"    # Lio/sentry/android/replay/ReplayIntegration;
    .param p1, "$closeCompleted"    # Ljava/util/concurrent/CountDownLatch;

    .line 525
    nop

    .line 526
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->closeInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    invoke-direct {p0, v0}, Lio/sentry/android/replay/ReplayIntegration;->shutdownExecutors(Z)V

    .line 529
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 530
    nop

    .line 531
    return-void

    .line 528
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lio/sentry/android/replay/ReplayIntegration;->shutdownExecutors(Z)V

    .line 529
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v1
.end method

.method private final closeInternal()V
    .locals 11

    .line 562
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getLifecycleState()Lio/sentry/android/replay/ReplayLifecycleState;

    move-result-object v0

    sget-object v1, Lio/sentry/android/replay/ReplayLifecycleState;->CLOSED:Lio/sentry/android/replay/ReplayLifecycleState;

    invoke-static {v0, v1}, Lio/sentry/android/replay/ReplayLifecycleKt;->isAllowed(Lio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/android/replay/ReplayLifecycleState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "options"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object v0

    move-object v2, p0

    check-cast v2, Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;

    invoke-interface {v0, v2}, Lio/sentry/IConnectionStatusProvider;->removeConnectionStatusObserver(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)V

    .line 567
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/IScopes;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v2, p0

    check-cast v2, Lio/sentry/transport/RateLimiter$IRateLimitObserver;

    invoke-virtual {v0, v2}, Lio/sentry/transport/RateLimiter;->removeRateLimitObserver(Lio/sentry/transport/RateLimiter$IRateLimitObserver;)V

    .line 568
    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v1}, Lio/sentry/android/replay/ReplayIntegration;->stopInternal$default(Lio/sentry/android/replay/ReplayIntegration;ZILjava/lang/Object;)V

    .line 569
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/android/replay/Recorder;->close()V

    .line 570
    :cond_3
    iput-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    .line 571
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getRootViewsSpy$sentry_android_replay_release()Lio/sentry/android/replay/RootViewsSpy;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/replay/RootViewsSpy;->close()V

    .line 572
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    sget-object v6, Lio/sentry/android/replay/ReplayLifecycleState;->CLOSED:Lio/sentry/android/replay/ReplayLifecycleState;

    const/16 v9, 0xd

    const/4 v10, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->copy$default(Lio/sentry/android/replay/ReplayIntegration$ReplayState;JLio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/capture/CaptureStrategy;ILjava/lang/Object;)Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 573
    return-void
.end method

.method private final enqueueOnMainThread(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 617
    .local v0, "$i$f$enqueueOnMainThread":I
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    new-instance v2, Lio/sentry/android/replay/ReplayIntegration$enqueueOnMainThread$1;

    invoke-direct {v2, p1}, Lio/sentry/android/replay/ReplayIntegration$enqueueOnMainThread$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lio/sentry/android/replay/util/MainLooperHandler;->post(Ljava/lang/Runnable;)Z

    .line 618
    return-void
.end method

.method private final finalizePreviousReplay()V
    .locals 4

    .line 664
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    const/4 v1, 0x0

    const-string v2, "options"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    const-string v3, "getExecutorService(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    new-instance v2, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/replay/ReplayIntegration;)V

    const-string v3, "ReplayIntegration.finalize_previous_replay"

    invoke-static {v0, v1, v3, v2}, Lio/sentry/android/replay/util/ExecutorsKt;->submitSafely(Lio/sentry/ISentryExecutorService;Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 721
    return-void
.end method

.method private static final finalizePreviousReplay$lambda$0(Lio/sentry/android/replay/ReplayIntegration;)V
    .locals 28
    .param p0, "this$0"    # Lio/sentry/android/replay/ReplayIntegration;

    .line 665
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    const-string v2, "options"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->findPersistingScopeObserver()Lio/sentry/cache/PersistingScopeObserver;

    move-result-object v1

    .line 667
    .local v1, "persistingScopeObserver":Lio/sentry/cache/PersistingScopeObserver;
    const/4 v4, 0x1

    if-eqz v1, :cond_c

    iget-object v5, v0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v5, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_1
    const-string v6, "replay.json"

    const-class v7, Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v7}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_2

    move-object v2, v3

    goto/16 :goto_3

    .line 666
    :cond_2
    nop

    .line 672
    .local v5, "previousReplayIdString":Ljava/lang/String;
    new-instance v6, Lio/sentry/protocol/SentryId;

    invoke-direct {v6, v5}, Lio/sentry/protocol/SentryId;-><init>(Ljava/lang/String;)V

    move-object v13, v6

    .line 675
    .local v13, "previousReplayId":Lio/sentry/protocol/SentryId;
    nop

    .line 676
    sget-object v6, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 677
    sget-object v6, Lio/sentry/android/replay/ReplayIntegration;->replayIdsOfThisProcess:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v13}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_2

    .line 683
    :cond_3
    sget-object v6, Lio/sentry/android/replay/ReplayCache;->Companion:Lio/sentry/android/replay/ReplayCache$Companion;

    iget-object v7, v0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v7, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v3

    :cond_4
    iget-object v8, v0, Lio/sentry/android/replay/ReplayIntegration;->replayCacheProvider:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v6, v7, v13, v8}, Lio/sentry/android/replay/ReplayCache$Companion;->fromDisk$sentry_android_replay_release(Lio/sentry/SentryOptions;Lio/sentry/protocol/SentryId;Lkotlin/jvm/functions/Function1;)Lio/sentry/android/replay/LastSegmentData;

    move-result-object v6

    if-nez v6, :cond_5

    .line 684
    move-object/from16 v2, p0

    .local v2, "$this$finalizePreviousReplay_u24lambda_u240_u241":Lio/sentry/android/replay/ReplayIntegration;
    const/4 v6, 0x0

    .line 685
    .local v6, "$i$a$-run-ReplayIntegration$finalizePreviousReplay$1$lastSegment$1":I
    invoke-static {v2, v3, v4, v3}, Lio/sentry/android/replay/ReplayIntegration;->cleanupReplays$default(Lio/sentry/android/replay/ReplayIntegration;Ljava/lang/String;ILjava/lang/Object;)V

    .line 686
    return-void

    .line 682
    .end local v2    # "$this$finalizePreviousReplay_u24lambda_u240_u241":Lio/sentry/android/replay/ReplayIntegration;
    .end local v6    # "$i$a$-run-ReplayIntegration$finalizePreviousReplay$1$lastSegment$1":I
    :cond_5
    nop

    .line 691
    .local v6, "lastSegment":Lio/sentry/android/replay/LastSegmentData;
    iget-object v4, v0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v4, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_6
    const-string v7, "breadcrumbs.json"

    const-class v8, Ljava/util/List;

    invoke-virtual {v1, v4, v7, v8}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    instance-of v7, v4, Ljava/util/List;

    if-eqz v7, :cond_7

    check-cast v4, Ljava/util/List;

    move-object/from16 v22, v4

    goto :goto_0

    :cond_7
    move-object/from16 v22, v3

    .line 690
    :goto_0
    nop

    .line 694
    .local v22, "breadcrumbs":Ljava/util/List;
    sget-object v7, Lio/sentry/android/replay/capture/CaptureStrategy;->Companion:Lio/sentry/android/replay/capture/CaptureStrategy$Companion;

    .line 695
    iget-object v8, v0, Lio/sentry/android/replay/ReplayIntegration;->scopes:Lio/sentry/IScopes;

    .line 696
    iget-object v4, v0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v4, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v3

    goto :goto_1

    :cond_8
    move-object v9, v4

    .line 697
    :goto_1
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getDuration()J

    move-result-wide v10

    .line 698
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getTimestamp()Ljava/util/Date;

    move-result-object v12

    .line 700
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getId()I

    move-result v14

    .line 701
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getRecorderConfig()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingHeight()I

    move-result v15

    .line 702
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getRecorderConfig()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingWidth()I

    move-result v16

    .line 703
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getRecorderConfig()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getFrameRate()I

    move-result v19

    .line 704
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getRecorderConfig()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getBitRate()I

    move-result v20

    .line 705
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getCache()Lio/sentry/android/replay/ReplayCache;

    move-result-object v18

    .line 706
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getReplayType()Lio/sentry/SentryReplayEvent$ReplayType;

    move-result-object v17

    .line 707
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getScreenAtStart()Ljava/lang/String;

    move-result-object v21

    .line 709
    new-instance v4, Ljava/util/LinkedList;

    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getEvents()Ljava/util/List;

    move-result-object v23

    move-object/from16 v3, v23

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v4, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 694
    nop

    .line 695
    nop

    .line 696
    nop

    .line 697
    nop

    .line 698
    nop

    .line 699
    nop

    .line 700
    nop

    .line 701
    nop

    .line 702
    nop

    .line 706
    nop

    .line 705
    nop

    .line 703
    nop

    .line 704
    nop

    .line 707
    nop

    .line 708
    nop

    .line 709
    move-object/from16 v23, v4

    check-cast v23, Ljava/util/Deque;

    .line 694
    const v26, 0x18000

    const/16 v27, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v7 .. v27}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion;->createSegment$default(Lio/sentry/android/replay/capture/CaptureStrategy$Companion;Lio/sentry/IScopes;Lio/sentry/SentryOptions;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIILio/sentry/SentryReplayEvent$ReplayType;Lio/sentry/android/replay/ReplayCache;IILjava/lang/String;Ljava/util/List;Ljava/util/Deque;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    move-result-object v3

    .line 693
    nop

    .line 712
    .local v3, "segment":Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;
    instance-of v4, v3, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    if-eqz v4, :cond_a

    .line 713
    move-object v4, v3

    check-cast v4, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    invoke-virtual {v4}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->getReplay()Lio/sentry/SentryReplayEvent;

    move-result-object v4

    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getMetadata()Lio/sentry/android/replay/RecordingMetadata;

    move-result-object v7

    iget-object v8, v0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v8, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_9
    invoke-static {v4, v7, v8}, Lio/sentry/android/replay/ReplayIntegrationKt;->access$applyRecordingMetadata(Lio/sentry/SentryReplayEvent;Lio/sentry/android/replay/RecordingMetadata;Lio/sentry/SentryOptions;)V

    .line 714
    new-instance v2, Lio/sentry/android/replay/ReplayIntegration$PreviousReplayHint;

    invoke-direct {v2}, Lio/sentry/android/replay/ReplayIntegration$PreviousReplayHint;-><init>()V

    invoke-static {v2}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object v2

    .line 715
    .local v2, "hint":Lio/sentry/Hint;
    move-object v4, v3

    check-cast v4, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    iget-object v7, v0, Lio/sentry/android/replay/ReplayIntegration;->scopes:Lio/sentry/IScopes;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v7, v2}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->capture(Lio/sentry/IScopes;Lio/sentry/Hint;)V

    .line 717
    .end local v2    # "hint":Lio/sentry/Hint;
    :cond_a
    nop

    .line 718
    nop

    .line 717
    invoke-direct {v0, v5}, Lio/sentry/android/replay/ReplayIntegration;->cleanupReplays(Ljava/lang/String;)V

    .line 720
    return-void

    .line 679
    .end local v3    # "segment":Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;
    .end local v6    # "lastSegment":Lio/sentry/android/replay/LastSegmentData;
    .end local v22    # "breadcrumbs":Ljava/util/List;
    :cond_b
    :goto_2
    const/4 v2, 0x0

    invoke-static {v0, v2, v4, v2}, Lio/sentry/android/replay/ReplayIntegration;->cleanupReplays$default(Lio/sentry/android/replay/ReplayIntegration;Ljava/lang/String;ILjava/lang/Object;)V

    .line 680
    return-void

    .line 667
    .end local v5    # "previousReplayIdString":Ljava/lang/String;
    .end local v13    # "previousReplayId":Lio/sentry/protocol/SentryId;
    :cond_c
    move-object v2, v3

    .line 668
    :goto_3
    move-object/from16 v3, p0

    .local v3, "$this$finalizePreviousReplay_u24lambda_u240_u240":Lio/sentry/android/replay/ReplayIntegration;
    const/4 v5, 0x0

    .line 669
    .local v5, "$i$a$-run-ReplayIntegration$finalizePreviousReplay$1$previousReplayIdString$1":I
    invoke-static {v3, v2, v4, v2}, Lio/sentry/android/replay/ReplayIntegration;->cleanupReplays$default(Lio/sentry/android/replay/ReplayIntegration;Ljava/lang/String;ILjava/lang/Object;)V

    .line 670
    return-void
.end method

.method private static getPersistingExecutor$sentry_android_replay_release$delegate(Lio/sentry/android/replay/ReplayIntegration;)Ljava/lang/Object;
    .locals 1
    .param p0, "<this>"    # Lio/sentry/android/replay/ReplayIntegration;

    .line 134
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lazyPersistingExecutor:Lkotlin/Lazy;

    return-object v0
.end method

.method private static getReplayExecutor$sentry_android_replay_release$delegate(Lio/sentry/android/replay/ReplayIntegration;)Ljava/lang/Object;
    .locals 1
    .param p0, "<this>"    # Lio/sentry/android/replay/ReplayIntegration;

    .line 128
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lazyReplayExecutor:Lkotlin/Lazy;

    return-object v0
.end method

.method private static final onScreenshotRecorded$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/sentry/IScope;)V
    .locals 4
    .param p0, "$screen"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .param p1, "it"    # Lio/sentry/IScope;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    invoke-interface {p1}, Lio/sentry/IScope;->getScreen()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x2e

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method private static final onScreenshotRecorded$lambda$2(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/sentry/IScope;)V
    .locals 4
    .param p0, "$screen"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .param p1, "it"    # Lio/sentry/IScope;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    invoke-interface {p1}, Lio/sentry/IScope;->getScreen()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x2e

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method private final pauseInternal()V
    .locals 9

    .line 427
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    .line 428
    .local v1, "current":Lio/sentry/android/replay/ReplayIntegration$ReplayState;
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getLifecycleState()Lio/sentry/android/replay/ReplayLifecycleState;

    move-result-object v0

    sget-object v2, Lio/sentry/android/replay/ReplayLifecycleState;->PAUSED:Lio/sentry/android/replay/ReplayLifecycleState;

    invoke-static {v0, v2}, Lio/sentry/android/replay/ReplayLifecycleKt;->isAllowed(Lio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/android/replay/ReplayLifecycleState;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/android/replay/Recorder;->pause()V

    .line 433
    :cond_1
    invoke-virtual {v1}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getCaptureStrategy()Lio/sentry/android/replay/capture/CaptureStrategy;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/android/replay/capture/CaptureStrategy;->pause()V

    .line 434
    :cond_2
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v4, Lio/sentry/android/replay/ReplayLifecycleState;->PAUSED:Lio/sentry/android/replay/ReplayLifecycleState;

    const/16 v7, 0xd

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->copy$default(Lio/sentry/android/replay/ReplayIntegration$ReplayState;JLio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/capture/CaptureStrategy;ILjava/lang/Object;)Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 435
    return-void

    .line 429
    :cond_3
    :goto_0
    return-void
.end method

.method private final registerRootViewListeners()V
    .locals 3

    .line 636
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    instance-of v0, v0, Lio/sentry/android/replay/OnRootViewsChangedListener;

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getRootViewsSpy$sentry_android_replay_release()Lio/sentry/android/replay/RootViewsSpy;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/replay/RootViewsSpy;->getListeners()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    const-string v2, "null cannot be cast to non-null type io.sentry.android.replay.OnRootViewsChangedListener"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lio/sentry/android/replay/OnRootViewsChangedListener;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getRootViewsSpy$sentry_android_replay_release()Lio/sentry/android/replay/RootViewsSpy;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/replay/RootViewsSpy;->getListeners()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->gestureRecorder:Lio/sentry/android/replay/gestures/GestureRecorder;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 640
    return-void
.end method

.method private final resumeInternal()V
    .locals 9

    .line 279
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    .line 280
    .local v1, "current":Lio/sentry/android/replay/ReplayIntegration$ReplayState;
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getLifecycleState()Lio/sentry/android/replay/ReplayLifecycleState;

    move-result-object v0

    sget-object v2, Lio/sentry/android/replay/ReplayLifecycleState;->RESUMED:Lio/sentry/android/replay/ReplayLifecycleState;

    invoke-static {v0, v2}, Lio/sentry/android/replay/ReplayLifecycleKt;->isAllowed(Lio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/android/replay/ReplayLifecycleState;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 284
    :cond_0
    nop

    .line 285
    iget-boolean v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isManualPause:Z

    if-nez v0, :cond_6

    .line 286
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lastKnownConnectionStatus:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    sget-object v2, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    if-eq v0, v2, :cond_6

    .line 287
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->scopes:Lio/sentry/IScopes;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/IScopes;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v4, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    invoke-virtual {v0, v4}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-nez v0, :cond_6

    .line 288
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/IScopes;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v4, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    invoke-virtual {v0, v4}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    .line 293
    :cond_3
    invoke-virtual {v1}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getCaptureStrategy()Lio/sentry/android/replay/capture/CaptureStrategy;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/android/replay/capture/CaptureStrategy;->resume()V

    .line 294
    :cond_4
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lio/sentry/android/replay/Recorder;->resume()V

    .line 295
    :cond_5
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v4, Lio/sentry/android/replay/ReplayLifecycleState;->RESUMED:Lio/sentry/android/replay/ReplayLifecycleState;

    const/16 v7, 0xd

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->copy$default(Lio/sentry/android/replay/ReplayIntegration$ReplayState;JLio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/capture/CaptureStrategy;ILjava/lang/Object;)Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 296
    return-void

    .line 290
    :cond_6
    :goto_2
    return-void

    .line 281
    :cond_7
    :goto_3
    return-void
.end method

.method private final sample(Ljava/lang/Double;)Z
    .locals 4
    .param p1, "rate"    # Ljava/lang/Double;

    .line 749
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->random:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/util/Random;

    if-nez v0, :cond_0

    new-instance v0, Lio/sentry/util/Random;

    invoke-direct {v0}, Lio/sentry/util/Random;-><init>()V

    move-object v1, v0

    .line 850
    .local v1, "it":Lio/sentry/util/Random;
    const/4 v2, 0x0

    .line 749
    .local v2, "$i$a$-also-ReplayIntegration$sample$1":I
    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration;->random:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .end local v1    # "it":Lio/sentry/util/Random;
    .end local v2    # "$i$a$-also-ReplayIntegration$sample$1":I
    :cond_0
    invoke-static {v0, p1}, Lio/sentry/android/replay/util/SamplingKt;->sample(Lio/sentry/util/Random;Ljava/lang/Double;)Z

    move-result v0

    return v0
.end method

.method private final shutdownExecutors(Z)V
    .locals 1
    .param p1, "waitForTermination"    # Z

    .line 545
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lazyReplayExecutor:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    if-eqz p1, :cond_0

    .line 547
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getReplayExecutor$sentry_android_replay_release()Lio/sentry/android/replay/util/ReplayExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/replay/util/ReplayExecutorService;->shutdown()V

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getReplayExecutor$sentry_android_replay_release()Lio/sentry/android/replay/util/ReplayExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/replay/util/ReplayExecutorService;->gracefulShutdown()V

    .line 552
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lazyPersistingExecutor:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    if-eqz p1, :cond_2

    .line 554
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getPersistingExecutor$sentry_android_replay_release()Lio/sentry/android/replay/util/ReplayExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/replay/util/ReplayExecutorService;->shutdown()V

    goto :goto_1

    .line 556
    :cond_2
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getPersistingExecutor$sentry_android_replay_release()Lio/sentry/android/replay/util/ReplayExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/replay/util/ReplayExecutorService;->gracefulShutdown()V

    .line 559
    :cond_3
    :goto_1
    return-void
.end method

.method private final startInternal(Z)V
    .locals 14
    .param p1, "isFullSession"    # Z

    .line 216
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    .line 221
    .local v0, "current":Lio/sentry/android/replay/ReplayIntegration$ReplayState;
    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getLifecycleState()Lio/sentry/android/replay/ReplayLifecycleState;

    move-result-object v1

    sget-object v2, Lio/sentry/android/replay/ReplayLifecycleState;->STARTED:Lio/sentry/android/replay/ReplayLifecycleState;

    invoke-static {v1, v2}, Lio/sentry/android/replay/ReplayLifecycleKt;->isAllowed(Lio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/android/replay/ReplayLifecycleState;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "options"

    if-nez v1, :cond_2

    .line 222
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v1, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    .line 223
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 224
    new-array v2, v2, [Ljava/lang/Object;

    .line 222
    const-string v4, "Session replay is already being recorded, not starting a new one"

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    return-void

    .line 229
    :cond_2
    iput-boolean v2, p0, Lio/sentry/android/replay/ReplayIntegration;->isManualPause:Z

    .line 231
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->replayCaptureStrategyProvider:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/replay/capture/CaptureStrategy;

    if-nez v1, :cond_9

    .line 232
    :cond_3
    const-string v1, "getMonotonicTicker(...)"

    if-eqz p1, :cond_6

    .line 233
    new-instance v5, Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    .line 234
    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v2, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    goto :goto_1

    :cond_4
    move-object v6, v2

    .line 235
    :goto_1
    iget-object v7, p0, Lio/sentry/android/replay/ReplayIntegration;->scopes:Lio/sentry/IScopes;

    .line 236
    iget-object v8, p0, Lio/sentry/android/replay/ReplayIntegration;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 237
    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v2, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v3, v2

    :goto_2
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getMonotonicTicker()Lio/sentry/time/MonotonicTicker;

    move-result-object v9

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getReplayExecutor$sentry_android_replay_release()Lio/sentry/android/replay/util/ReplayExecutorService;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/util/concurrent/ScheduledExecutorService;

    .line 239
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getPersistingExecutor$sentry_android_replay_release()Lio/sentry/android/replay/util/ReplayExecutorService;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/util/concurrent/ScheduledExecutorService;

    .line 240
    iget-object v12, p0, Lio/sentry/android/replay/ReplayIntegration;->replayCacheProvider:Lkotlin/jvm/functions/Function1;

    .line 233
    invoke-direct/range {v5 .. v12}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/time/MonotonicTicker;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    goto :goto_5

    .line 243
    :cond_6
    new-instance v6, Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    .line 244
    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v2, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v3

    goto :goto_3

    :cond_7
    move-object v7, v2

    .line 245
    :goto_3
    iget-object v8, p0, Lio/sentry/android/replay/ReplayIntegration;->scopes:Lio/sentry/IScopes;

    .line 246
    iget-object v9, p0, Lio/sentry/android/replay/ReplayIntegration;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 247
    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v2, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object v3, v2

    :goto_4
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getMonotonicTicker()Lio/sentry/time/MonotonicTicker;

    move-result-object v10

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getReplayExecutor$sentry_android_replay_release()Lio/sentry/android/replay/util/ReplayExecutorService;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/util/concurrent/ScheduledExecutorService;

    .line 249
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getPersistingExecutor$sentry_android_replay_release()Lio/sentry/android/replay/util/ReplayExecutorService;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/concurrent/ScheduledExecutorService;

    .line 250
    iget-object v13, p0, Lio/sentry/android/replay/ReplayIntegration;->replayCacheProvider:Lkotlin/jvm/functions/Function1;

    .line 243
    invoke-direct/range {v6 .. v13}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/time/MonotonicTicker;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;)V

    move-object v5, v6

    check-cast v5, Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    :goto_5
    move-object v1, v5

    check-cast v1, Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 231
    :cond_9
    nop

    .line 230
    move-object v2, v1

    .line 253
    .local v2, "strategy":Lio/sentry/android/replay/capture/CaptureStrategy;
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lio/sentry/android/replay/Recorder;->start()V

    .line 254
    :cond_a
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lio/sentry/android/replay/capture/CaptureStrategy$DefaultImpls;->start$default(Lio/sentry/android/replay/capture/CaptureStrategy;ILio/sentry/protocol/SentryId;Lio/sentry/SentryReplayEvent$ReplayType;ILjava/lang/Object;)V

    .line 255
    invoke-interface {v2}, Lio/sentry/android/replay/capture/CaptureStrategy;->getCurrentReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    .line 256
    .local v1, "replayId":Lio/sentry/protocol/SentryId;
    if-eqz v1, :cond_b

    sget-object v3, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 257
    sget-object v3, Lio/sentry/android/replay/ReplayIntegration;->replayIdsOfThisProcess:Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_b
    iget-object v8, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 260
    move-object v7, v2

    .end local v2    # "strategy":Lio/sentry/android/replay/capture/CaptureStrategy;
    .local v7, "strategy":Lio/sentry/android/replay/capture/CaptureStrategy;
    new-instance v2, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    .line 261
    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getGeneration()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 262
    sget-object v5, Lio/sentry/android/replay/ReplayLifecycleState;->STARTED:Lio/sentry/android/replay/ReplayLifecycleState;

    .line 263
    if-nez v1, :cond_c

    sget-object v6, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    goto :goto_6

    :cond_c
    move-object v6, v1

    :goto_6
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 264
    nop

    .line 260
    invoke-direct/range {v2 .. v7}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;-><init>(JLio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/capture/CaptureStrategy;)V

    .line 259
    move-object v3, v2

    move-object v2, v7

    .end local v7    # "strategy":Lio/sentry/android/replay/capture/CaptureStrategy;
    .restart local v2    # "strategy":Lio/sentry/android/replay/capture/CaptureStrategy;
    invoke-virtual {v8, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 268
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->registerRootViewListeners()V

    .line 269
    return-void
.end method

.method private final stopInternal(Z)V
    .locals 9
    .param p1, "resetManualPause"    # Z

    .line 442
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    .line 443
    .local v1, "current":Lio/sentry/android/replay/ReplayIntegration$ReplayState;
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getLifecycleState()Lio/sentry/android/replay/ReplayLifecycleState;

    move-result-object v0

    sget-object v2, Lio/sentry/android/replay/ReplayLifecycleState;->STOPPED:Lio/sentry/android/replay/ReplayLifecycleState;

    invoke-static {v0, v2}, Lio/sentry/android/replay/ReplayLifecycleKt;->isAllowed(Lio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/android/replay/ReplayLifecycleState;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->unregisterRootViewListeners()V

    .line 448
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/android/replay/Recorder;->reset()V

    .line 449
    :cond_1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/android/replay/Recorder;->stop()V

    .line 450
    :cond_2
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->gestureRecorder:Lio/sentry/android/replay/gestures/GestureRecorder;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lio/sentry/android/replay/gestures/GestureRecorder;->stop()V

    .line 451
    :cond_3
    invoke-virtual {v1}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getCaptureStrategy()Lio/sentry/android/replay/capture/CaptureStrategy;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/android/replay/capture/CaptureStrategy;->stop()V

    .line 452
    :cond_4
    if-eqz p1, :cond_5

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isManualPause:Z

    .line 455
    :cond_5
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 456
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 457
    sget-object v4, Lio/sentry/android/replay/ReplayLifecycleState;->STOPPED:Lio/sentry/android/replay/ReplayLifecycleState;

    .line 458
    sget-object v5, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    const-string v2, "EMPTY_ID"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    nop

    .line 456
    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->copy$default(Lio/sentry/android/replay/ReplayIntegration$ReplayState;JLio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/capture/CaptureStrategy;ILjava/lang/Object;)Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    move-result-object v2

    .line 455
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 462
    return-void

    .line 444
    :cond_6
    :goto_0
    return-void
.end method

.method static synthetic stopInternal$default(Lio/sentry/android/replay/ReplayIntegration;ZILjava/lang/Object;)V
    .locals 0

    .line 441
    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/android/replay/ReplayIntegration;->stopInternal(Z)V

    return-void
.end method

.method private final unregisterRootViewListeners()V
    .locals 3

    .line 643
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    instance-of v0, v0, Lio/sentry/android/replay/OnRootViewsChangedListener;

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getRootViewsSpy$sentry_android_replay_release()Lio/sentry/android/replay/RootViewsSpy;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/replay/RootViewsSpy;->getListeners()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    const-string v2, "null cannot be cast to non-null type io.sentry.android.replay.OnRootViewsChangedListener"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lio/sentry/android/replay/OnRootViewsChangedListener;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 646
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getRootViewsSpy$sentry_android_replay_release()Lio/sentry/android/replay/RootViewsSpy;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/replay/RootViewsSpy;->getListeners()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->gestureRecorder:Lio/sentry/android/replay/gestures/GestureRecorder;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 647
    return-void
.end method


# virtual methods
.method public captureReplay(Ljava/lang/Boolean;)Lio/sentry/protocol/SentryId;
    .locals 6
    .param p1, "isTerminating"    # Ljava/lang/Boolean;

    .line 299
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    .line 300
    .local v0, "current":Lio/sentry/android/replay/ReplayIntegration$ReplayState;
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-string v2, "EMPTY_ID"

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 304
    :cond_0
    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    sget-object v3, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "options"

    if-eqz v1, :cond_2

    .line 305
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v1, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Replay id is not set, not capturing for event"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 309
    :cond_2
    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->isBuffering()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v1, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_3
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getOnErrorSampleRate()Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/sentry/android/replay/ReplayIntegration;->sample(Ljava/lang/Double;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 310
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v1, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v4, v1

    :goto_1
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    .line 311
    sget-object v4, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 312
    new-array v3, v3, [Ljava/lang/Object;

    .line 310
    const-string v5, "Replay wasn\'t sampled by onErrorSampleRate, not capturing for event"

    invoke-interface {v1, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 318
    :cond_5
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v1, :cond_6

    new-instance v2, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/replay/ReplayIntegration$ReplayState;)V

    invoke-interface {v1, v2}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 319
    :cond_6
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 321
    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getCaptureStrategy()Lio/sentry/android/replay/capture/CaptureStrategy;

    move-result-object v2

    if-eqz v2, :cond_8

    sget-object v3, Lio/sentry/android/replay/ReplayIntegration$captureReplay$2;->INSTANCE:Lio/sentry/android/replay/ReplayIntegration$captureReplay$2;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v1, v3}, Lio/sentry/android/replay/capture/CaptureStrategy;->captureReplay(ZLkotlin/jvm/functions/Function1;)V

    goto :goto_2

    .line 323
    :cond_7
    move-object v1, p0

    .local v1, "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    const/4 v2, 0x0

    .line 834
    .local v2, "$i$f$enqueueOnMainThread":I
    iget-object v3, v1, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    new-instance v4, Lio/sentry/android/replay/ReplayIntegration$captureReplay$$inlined$enqueueOnMainThread$1;

    invoke-direct {v4, p0, v0}, Lio/sentry/android/replay/ReplayIntegration$captureReplay$$inlined$enqueueOnMainThread$1;-><init>(Lio/sentry/android/replay/ReplayIntegration;Lio/sentry/android/replay/ReplayIntegration$ReplayState;)V

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lio/sentry/android/replay/util/MainLooperHandler;->post(Ljava/lang/Runnable;)Z

    .line 835
    nop

    .line 329
    .end local v1    # "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    .end local v2    # "$i$f$enqueueOnMainThread":I
    :cond_8
    :goto_2
    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    return-object v1

    .line 301
    :cond_9
    :goto_3
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public close()V
    .locals 7

    .line 511
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    const/4 v1, 0x0

    const-string v2, "options"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/util/thread/IThreadChecker;->isMainThread()Z

    move-result v0

    .line 516
    .local v0, "isMainThread":Z
    if-eqz v0, :cond_2

    .line 517
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->closeInternal()V

    .line 518
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lio/sentry/android/replay/ReplayIntegration;->shutdownExecutors(Z)V

    .line 519
    return-void

    .line 522
    :cond_2
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 523
    .local v3, "closeCompleted":Ljava/util/concurrent/CountDownLatch;
    nop

    .line 524
    iget-object v5, p0, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    new-instance v6, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v3}, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/replay/ReplayIntegration;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v5, v6}, Lio/sentry/android/replay/util/MainLooperHandler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 533
    return-void

    .line 535
    :cond_3
    nop

    .line 536
    :try_start_0
    iget-object v5, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v5, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v5

    :goto_0
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    move-result-wide v1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 537
    invoke-direct {p0, v4}, Lio/sentry/android/replay/ReplayIntegration;->shutdownExecutors(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 539
    :catch_0
    move-exception v1

    .line 540
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 542
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_5
    :goto_1
    return-void
.end method

.method public disableDebugMaskingOverlay()V
    .locals 1

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/replay/ReplayIntegration;->debugMaskingEnabled:Z

    .line 406
    return-void
.end method

.method public enableDebugMaskingOverlay()V
    .locals 1

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/android/replay/ReplayIntegration;->debugMaskingEnabled:Z

    .line 402
    return-void
.end method

.method public flush()V
    .locals 4

    .line 375
    move-object v0, p0

    .local v0, "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    const/4 v1, 0x0

    .line 836
    .local v1, "$i$f$enqueueOnMainThread":I
    iget-object v2, v0, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    new-instance v3, Lio/sentry/android/replay/ReplayIntegration$flush$$inlined$enqueueOnMainThread$1;

    invoke-direct {v3, p0}, Lio/sentry/android/replay/ReplayIntegration$flush$$inlined$enqueueOnMainThread$1;-><init>(Lio/sentry/android/replay/ReplayIntegration;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lio/sentry/android/replay/util/MainLooperHandler;->post(Ljava/lang/Runnable;)Z

    .line 837
    nop

    .line 385
    .end local v0    # "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    .end local v1    # "$i$f$enqueueOnMainThread":I
    return-void
.end method

.method public getBreadcrumbConverter()Lio/sentry/ReplayBreadcrumbConverter;
    .locals 1

    .line 391
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->replayBreadcrumbConverter:Lio/sentry/ReplayBreadcrumbConverter;

    return-object v0
.end method

.method public final getLazyPersistingExecutor$sentry_android_replay_release()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lio/sentry/android/replay/util/ReplayExecutorService;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lazyPersistingExecutor:Lkotlin/Lazy;

    return-object v0
.end method

.method public final getLazyReplayExecutor$sentry_android_replay_release()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lio/sentry/android/replay/util/ReplayExecutorService;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lazyReplayExecutor:Lkotlin/Lazy;

    return-object v0
.end method

.method public final getPersistingExecutor$sentry_android_replay_release()Lio/sentry/android/replay/util/ReplayExecutorService;
    .locals 1

    .line 134
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lazyPersistingExecutor:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/util/ReplayExecutorService;

    return-object v0
.end method

.method public final getReplayCacheDir()Ljava/io/File;
    .locals 1

    .line 139
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getCaptureStrategy()Lio/sentry/android/replay/capture/CaptureStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/android/replay/capture/CaptureStrategy;->getReplayCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getReplayExecutor$sentry_android_replay_release()Lio/sentry/android/replay/util/ReplayExecutorService;
    .locals 1

    .line 128
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lazyReplayExecutor:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/util/ReplayExecutorService;

    return-object v0
.end method

.method public getReplayId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 372
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public final getRootViewsSpy$sentry_android_replay_release()Lio/sentry/android/replay/RootViewsSpy;
    .locals 1

    .line 123
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->rootViewsSpy$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/RootViewsSpy;

    return-object v0
.end method

.method public isDebugMaskingOverlayEnabled()Z
    .locals 1

    .line 408
    iget-boolean v0, p0, Lio/sentry/android/replay/ReplayIntegration;->debugMaskingEnabled:Z

    return v0
.end method

.method public final isEnabled$sentry_android_replay_release()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 136
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final isManualPause$sentry_android_replay_release()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isManualPause:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->isRecording()Z

    move-result v0

    return v0
.end method

.method public onAppBackgrounded()V
    .locals 4

    .line 208
    move-object v0, p0

    .local v0, "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    const/4 v1, 0x0

    .line 828
    .local v1, "$i$f$enqueueOnMainThread":I
    iget-object v2, v0, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    new-instance v3, Lio/sentry/android/replay/ReplayIntegration$onAppBackgrounded$$inlined$enqueueOnMainThread$1;

    invoke-direct {v3, p0}, Lio/sentry/android/replay/ReplayIntegration$onAppBackgrounded$$inlined$enqueueOnMainThread$1;-><init>(Lio/sentry/android/replay/ReplayIntegration;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lio/sentry/android/replay/util/MainLooperHandler;->post(Ljava/lang/Runnable;)Z

    .line 829
    nop

    .line 209
    .end local v0    # "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    .end local v1    # "$i$f$enqueueOnMainThread":I
    return-void
.end method

.method public onAppForegrounded(Z)V
    .locals 4
    .param p1, "startNewSession"    # Z

    .line 182
    move-object v0, p0

    .local v0, "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    const/4 v1, 0x0

    .line 826
    .local v1, "$i$f$enqueueOnMainThread":I
    iget-object v2, v0, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    new-instance v3, Lio/sentry/android/replay/ReplayIntegration$onAppForegrounded$$inlined$enqueueOnMainThread$1;

    invoke-direct {v3, p0, p1}, Lio/sentry/android/replay/ReplayIntegration$onAppForegrounded$$inlined$enqueueOnMainThread$1;-><init>(Lio/sentry/android/replay/ReplayIntegration;Z)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lio/sentry/android/replay/util/MainLooperHandler;->post(Ljava/lang/Runnable;)Z

    .line 827
    nop

    .line 205
    .end local v0    # "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    .end local v1    # "$i$f$enqueueOnMainThread":I
    return-void
.end method

.method public onAppSessionEnded()V
    .locals 4

    .line 212
    move-object v0, p0

    .local v0, "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    const/4 v1, 0x0

    .line 830
    .local v1, "$i$f$enqueueOnMainThread":I
    iget-object v2, v0, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    new-instance v3, Lio/sentry/android/replay/ReplayIntegration$onAppSessionEnded$$inlined$enqueueOnMainThread$1;

    invoke-direct {v3, p0}, Lio/sentry/android/replay/ReplayIntegration$onAppSessionEnded$$inlined$enqueueOnMainThread$1;-><init>(Lio/sentry/android/replay/ReplayIntegration;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lio/sentry/android/replay/util/MainLooperHandler;->post(Ljava/lang/Runnable;)Z

    .line 831
    nop

    .line 213
    .end local v0    # "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    .end local v1    # "$i$f$enqueueOnMainThread":I
    return-void
.end method

.method public final onConfigurationChanged(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 3
    .param p1, "config"    # Lio/sentry/android/replay/ScreenshotRecorderConfig;

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    .line 736
    .local v0, "current":Lio/sentry/android/replay/ReplayIntegration$ReplayState;
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 739
    :cond_0
    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getCaptureStrategy()Lio/sentry/android/replay/capture/CaptureStrategy;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lio/sentry/android/replay/capture/CaptureStrategy;->onConfigurationChanged(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V

    .line 740
    :cond_1
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lio/sentry/android/replay/Recorder;->onConfigurationChanged(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V

    .line 743
    :cond_2
    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getLifecycleState()Lio/sentry/android/replay/ReplayLifecycleState;

    move-result-object v1

    sget-object v2, Lio/sentry/android/replay/ReplayLifecycleState;->PAUSED:Lio/sentry/android/replay/ReplayLifecycleState;

    if-ne v1, v2, :cond_3

    .line 744
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lio/sentry/android/replay/Recorder;->pause()V

    .line 746
    :cond_3
    return-void

    .line 737
    :cond_4
    :goto_0
    return-void
.end method

.method public onConnectionStatusChanged(Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)V
    .locals 4
    .param p1, "status"    # Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    move-object v0, p0

    .local v0, "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    const/4 v1, 0x0

    .line 846
    .local v1, "$i$f$enqueueOnMainThread":I
    iget-object v2, v0, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    new-instance v3, Lio/sentry/android/replay/ReplayIntegration$onConnectionStatusChanged$$inlined$enqueueOnMainThread$1;

    invoke-direct {v3, p0, p1}, Lio/sentry/android/replay/ReplayIntegration$onConnectionStatusChanged$$inlined$enqueueOnMainThread$1;-><init>(Lio/sentry/android/replay/ReplayIntegration;Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lio/sentry/android/replay/util/MainLooperHandler;->post(Ljava/lang/Runnable;)Z

    .line 847
    nop

    .line 590
    .end local v0    # "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    .end local v1    # "$i$f$enqueueOnMainThread":I
    return-void
.end method

.method public onRateLimitChanged(Lio/sentry/transport/RateLimiter;)V
    .locals 4
    .param p1, "rateLimiter"    # Lio/sentry/transport/RateLimiter;

    const-string v0, "rateLimiter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    move-object v0, p0

    .local v0, "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    const/4 v1, 0x0

    .line 848
    .local v1, "$i$f$enqueueOnMainThread":I
    iget-object v2, v0, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    new-instance v3, Lio/sentry/android/replay/ReplayIntegration$onRateLimitChanged$$inlined$enqueueOnMainThread$1;

    invoke-direct {v3, p0, p1}, Lio/sentry/android/replay/ReplayIntegration$onRateLimitChanged$$inlined$enqueueOnMainThread$1;-><init>(Lio/sentry/android/replay/ReplayIntegration;Lio/sentry/transport/RateLimiter;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lio/sentry/android/replay/util/MainLooperHandler;->post(Ljava/lang/Runnable;)Z

    .line 849
    nop

    .line 605
    .end local v0    # "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    .end local v1    # "$i$f$enqueueOnMainThread":I
    return-void
.end method

.method public onScreenshotRecorded(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 466
    .local v0, "screen":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v1, :cond_0

    new-instance v2, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-interface {v1, v2}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 467
    :cond_0
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    invoke-virtual {v1}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getCaptureStrategy()Lio/sentry/android/replay/capture/CaptureStrategy;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$2;

    invoke-direct {v2, p0, p1, v0}, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$2;-><init>(Lio/sentry/android/replay/ReplayIntegration;Landroid/graphics/Bitmap;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, p1, v2}, Lio/sentry/android/replay/capture/CaptureStrategy;->onScreenshotRecorded(Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;)V

    .line 484
    :cond_1
    move-object v1, p0

    .local v1, "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    const/4 v2, 0x0

    .line 842
    .local v2, "$i$f$enqueueOnMainThread":I
    iget-object v3, v1, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    new-instance v4, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$$inlined$enqueueOnMainThread$1;

    invoke-direct {v4, p0}, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$$inlined$enqueueOnMainThread$1;-><init>(Lio/sentry/android/replay/ReplayIntegration;)V

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lio/sentry/android/replay/util/MainLooperHandler;->post(Ljava/lang/Runnable;)Z

    .line 843
    nop

    .line 485
    .end local v1    # "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    .end local v2    # "$i$f$enqueueOnMainThread":I
    return-void
.end method

.method public onScreenshotRecorded(Ljava/io/File;J)V
    .locals 7
    .param p1, "screenshot"    # Ljava/io/File;
    .param p2, "frameTimestamp"    # J

    const-string v0, "screenshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v6, v0

    .line 489
    .local v6, "screen":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_0

    new-instance v1, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda3;

    invoke-direct {v1, v6}, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-interface {v0, v1}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 490
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getCaptureStrategy()Lio/sentry/android/replay/capture/CaptureStrategy;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$5;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    .end local p1    # "screenshot":Ljava/io/File;
    .end local p2    # "frameTimestamp":J
    .local v3, "screenshot":Ljava/io/File;
    .local v4, "frameTimestamp":J
    invoke-direct/range {v1 .. v6}, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$5;-><init>(Lio/sentry/android/replay/ReplayIntegration;Ljava/io/File;JLkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p2, v1, p1, p2}, Lio/sentry/android/replay/capture/CaptureStrategy$DefaultImpls;->onScreenshotRecorded$default(Lio/sentry/android/replay/capture/CaptureStrategy;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    goto :goto_0

    .end local v3    # "screenshot":Ljava/io/File;
    .end local v4    # "frameTimestamp":J
    .restart local p1    # "screenshot":Ljava/io/File;
    .restart local p2    # "frameTimestamp":J
    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    .line 507
    .end local p1    # "screenshot":Ljava/io/File;
    .end local p2    # "frameTimestamp":J
    .restart local v3    # "screenshot":Ljava/io/File;
    .restart local v4    # "frameTimestamp":J
    :goto_0
    move-object p1, p0

    .local p1, "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    const/4 p2, 0x0

    .line 844
    .local p2, "$i$f$enqueueOnMainThread":I
    iget-object p3, p1, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    new-instance v0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$$inlined$enqueueOnMainThread$2;

    invoke-direct {v0, p0}, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$$inlined$enqueueOnMainThread$2;-><init>(Lio/sentry/android/replay/ReplayIntegration;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p3, v0}, Lio/sentry/android/replay/util/MainLooperHandler;->post(Ljava/lang/Runnable;)Z

    .line 845
    nop

    .line 508
    .end local p1    # "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    .end local p2    # "$i$f$enqueueOnMainThread":I
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    .line 609
    .local v0, "current":Lio/sentry/android/replay/ReplayIntegration$ReplayState;
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->isTouchRecordingAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getCaptureStrategy()Lio/sentry/android/replay/capture/CaptureStrategy;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lio/sentry/android/replay/capture/CaptureStrategy;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 613
    :cond_1
    return-void

    .line 610
    :cond_2
    :goto_0
    return-void
.end method

.method public onWindowSizeChanged(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 724
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 727
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    const/4 v1, 0x0

    const-string v2, "options"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->isTrackConfiguration()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 729
    sget-object v0, Lio/sentry/android/replay/ScreenshotRecorderConfig;->Companion:Lio/sentry/android/replay/ScreenshotRecorderConfig$Companion;

    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration;->context:Landroid/content/Context;

    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v4

    :goto_0
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v1

    const-string v2, "getSessionReplay(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1, p1, p2}, Lio/sentry/android/replay/ScreenshotRecorderConfig$Companion;->fromSize(Landroid/content/Context;Lio/sentry/SentryReplayOptions;II)Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object v0

    .line 728
    nop

    .line 730
    .local v0, "recorderConfig":Lio/sentry/android/replay/ScreenshotRecorderConfig;
    invoke-virtual {p0, v0}, Lio/sentry/android/replay/ReplayIntegration;->onConfigurationChanged(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V

    .line 732
    .end local v0    # "recorderConfig":Lio/sentry/android/replay/ScreenshotRecorderConfig;
    :cond_3
    return-void

    .line 725
    :cond_4
    :goto_1
    return-void
.end method

.method public pause()V
    .locals 4

    .line 394
    move-object v0, p0

    .local v0, "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    const/4 v1, 0x0

    .line 838
    .local v1, "$i$f$enqueueOnMainThread":I
    iget-object v2, v0, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    new-instance v3, Lio/sentry/android/replay/ReplayIntegration$pause$$inlined$enqueueOnMainThread$1;

    invoke-direct {v3, p0}, Lio/sentry/android/replay/ReplayIntegration$pause$$inlined$enqueueOnMainThread$1;-><init>(Lio/sentry/android/replay/ReplayIntegration;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lio/sentry/android/replay/util/MainLooperHandler;->post(Ljava/lang/Runnable;)Z

    .line 839
    nop

    .line 398
    .end local v0    # "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    .end local v1    # "$i$f$enqueueOnMainThread":I
    return-void
.end method

.method public register(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 7
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    const-string v0, "scopes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iput-object p2, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    .line 151
    nop

    .line 156
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->scopes:Lio/sentry/IScopes;

    .line 157
    nop

    .line 158
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->recorderProvider:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/Recorder;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p2

    goto :goto_1

    .line 159
    :cond_1
    :goto_0
    new-instance v1, Lio/sentry/android/replay/WindowRecorder;

    move-object v3, p0

    check-cast v3, Lio/sentry/android/replay/ScreenshotRecorderCallback;

    move-object v4, p0

    check-cast v4, Lio/sentry/android/replay/WindowCallback;

    iget-object v5, p0, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getReplayExecutor$sentry_android_replay_release()Lio/sentry/android/replay/util/ReplayExecutorService;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/ScheduledExecutorService;

    move-object v2, p2

    .end local p2    # "options":Lio/sentry/SentryOptions;
    .local v2, "options":Lio/sentry/SentryOptions;
    invoke-direct/range {v1 .. v6}, Lio/sentry/android/replay/WindowRecorder;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/ScreenshotRecorderCallback;Lio/sentry/android/replay/WindowCallback;Lio/sentry/android/replay/util/MainLooperHandler;Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object v0, v1

    check-cast v0, Lio/sentry/android/replay/Recorder;

    .line 157
    :goto_1
    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    .line 160
    iget-object p2, p0, Lio/sentry/android/replay/ReplayIntegration;->gestureRecorderProvider:Lkotlin/jvm/functions/Function0;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/android/replay/gestures/GestureRecorder;

    if-nez p2, :cond_3

    :cond_2
    new-instance p2, Lio/sentry/android/replay/gestures/GestureRecorder;

    move-object v0, p0

    check-cast v0, Lio/sentry/android/replay/gestures/TouchRecorderCallback;

    invoke-direct {p2, v2, v0}, Lio/sentry/android/replay/gestures/GestureRecorder;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/gestures/TouchRecorderCallback;)V

    :cond_3
    iput-object p2, p0, Lio/sentry/android/replay/ReplayIntegration;->gestureRecorder:Lio/sentry/android/replay/gestures/GestureRecorder;

    .line 161
    iget-object p2, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 163
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;

    invoke-interface {p2, v0}, Lio/sentry/IConnectionStatusProvider;->addConnectionStatusObserver(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)Z

    .line 164
    invoke-interface {p1}, Lio/sentry/IScopes;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object p2

    if-eqz p2, :cond_4

    move-object v0, p0

    check-cast v0, Lio/sentry/transport/RateLimiter$IRateLimitObserver;

    invoke-virtual {p2, v0}, Lio/sentry/transport/RateLimiter;->addRateLimitObserver(Lio/sentry/transport/RateLimiter$IRateLimitObserver;)V

    .line 166
    :cond_4
    const-string p2, "Replay"

    invoke-static {p2}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->finalizePreviousReplay()V

    .line 169
    return-void
.end method

.method public registerSegmentName(Ljava/lang/String;)V
    .locals 2
    .param p1, "segmentName"    # Ljava/lang/String;

    const-string v0, "segmentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    .line 420
    .local v0, "current":Lio/sentry/android/replay/ReplayIntegration$ReplayState;
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getCaptureStrategy()Lio/sentry/android/replay/capture/CaptureStrategy;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lio/sentry/android/replay/capture/CaptureStrategy;->registerSegmentName(Ljava/lang/String;)V

    .line 424
    :cond_1
    return-void

    .line 421
    :cond_2
    :goto_0
    return-void
.end method

.method public registerTraceId(Lio/sentry/protocol/SentryId;)V
    .locals 2
    .param p1, "traceId"    # Lio/sentry/protocol/SentryId;

    const-string v0, "traceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    .line 412
    .local v0, "current":Lio/sentry/android/replay/ReplayIntegration$ReplayState;
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getCaptureStrategy()Lio/sentry/android/replay/capture/CaptureStrategy;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lio/sentry/android/replay/capture/CaptureStrategy;->registerTraceId(Lio/sentry/protocol/SentryId;)V

    .line 416
    :cond_1
    return-void

    .line 413
    :cond_2
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 4

    .line 272
    move-object v0, p0

    .local v0, "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    const/4 v1, 0x0

    .line 832
    .local v1, "$i$f$enqueueOnMainThread":I
    iget-object v2, v0, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    new-instance v3, Lio/sentry/android/replay/ReplayIntegration$resume$$inlined$enqueueOnMainThread$1;

    invoke-direct {v3, p0}, Lio/sentry/android/replay/ReplayIntegration$resume$$inlined$enqueueOnMainThread$1;-><init>(Lio/sentry/android/replay/ReplayIntegration;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lio/sentry/android/replay/util/MainLooperHandler;->post(Ljava/lang/Runnable;)Z

    .line 833
    nop

    .line 276
    .end local v0    # "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    .end local v1    # "$i$f$enqueueOnMainThread":I
    return-void
.end method

.method public setBreadcrumbConverter(Lio/sentry/ReplayBreadcrumbConverter;)V
    .locals 1
    .param p1, "converter"    # Lio/sentry/ReplayBreadcrumbConverter;

    const-string v0, "converter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->replayBreadcrumbConverter:Lio/sentry/ReplayBreadcrumbConverter;

    .line 389
    return-void
.end method

.method public final setManualPause$sentry_android_replay_release(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 137
    iput-boolean p1, p0, Lio/sentry/android/replay/ReplayIntegration;->isManualPause:Z

    return-void
.end method

.method public start()V
    .locals 4

    .line 174
    move-object v0, p0

    .local v0, "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    const/4 v1, 0x0

    .line 822
    .local v1, "$i$f$enqueueOnMainThread":I
    iget-object v2, v0, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    new-instance v3, Lio/sentry/android/replay/ReplayIntegration$start$$inlined$enqueueOnMainThread$1;

    invoke-direct {v3, p0}, Lio/sentry/android/replay/ReplayIntegration$start$$inlined$enqueueOnMainThread$1;-><init>(Lio/sentry/android/replay/ReplayIntegration;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lio/sentry/android/replay/util/MainLooperHandler;->post(Ljava/lang/Runnable;)Z

    .line 823
    nop

    .line 175
    .end local v0    # "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    .end local v1    # "$i$f$enqueueOnMainThread":I
    return-void
.end method

.method public startBuffering()V
    .locals 4

    .line 178
    move-object v0, p0

    .local v0, "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    const/4 v1, 0x0

    .line 824
    .local v1, "$i$f$enqueueOnMainThread":I
    iget-object v2, v0, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    new-instance v3, Lio/sentry/android/replay/ReplayIntegration$startBuffering$$inlined$enqueueOnMainThread$1;

    invoke-direct {v3, p0}, Lio/sentry/android/replay/ReplayIntegration$startBuffering$$inlined$enqueueOnMainThread$1;-><init>(Lio/sentry/android/replay/ReplayIntegration;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lio/sentry/android/replay/util/MainLooperHandler;->post(Ljava/lang/Runnable;)Z

    .line 825
    nop

    .line 179
    .end local v0    # "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    .end local v1    # "$i$f$enqueueOnMainThread":I
    return-void
.end method

.method public stop()V
    .locals 4

    .line 438
    move-object v0, p0

    .local v0, "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    const/4 v1, 0x0

    .line 840
    .local v1, "$i$f$enqueueOnMainThread":I
    iget-object v2, v0, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    new-instance v3, Lio/sentry/android/replay/ReplayIntegration$stop$$inlined$enqueueOnMainThread$1;

    invoke-direct {v3, p0}, Lio/sentry/android/replay/ReplayIntegration$stop$$inlined$enqueueOnMainThread$1;-><init>(Lio/sentry/android/replay/ReplayIntegration;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lio/sentry/android/replay/util/MainLooperHandler;->post(Ljava/lang/Runnable;)Z

    .line 841
    nop

    .line 439
    .end local v0    # "this_$iv":Lio/sentry/android/replay/ReplayIntegration;
    .end local v1    # "$i$f$enqueueOnMainThread":I
    return-void
.end method
