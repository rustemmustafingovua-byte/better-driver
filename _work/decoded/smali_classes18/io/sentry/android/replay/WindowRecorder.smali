.class public final Lio/sentry/android/replay/WindowRecorder;
.super Ljava/lang/Object;
.source "WindowRecorder.kt"

# interfaces
.implements Lio/sentry/android/replay/Recorder;
.implements Lio/sentry/android/replay/OnRootViewsChangedListener;
.implements Lio/sentry/android/replay/ExecutorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/WindowRecorder$Capturer;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowRecorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowRecorder.kt\nio/sentry/android/replay/WindowRecorder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,323:1\n1#2:324\n1863#3,2:325\n*S KotlinDebug\n*F\n+ 1 WindowRecorder.kt\nio/sentry/android/replay/WindowRecorder\n*L\n266#1:325,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u00019B1\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u001eH\u0002J\u0008\u0010(\u001a\u00020&H\u0016J\u0010\u0010)\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u001eH\u0002J\u000e\u0010*\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u001eJ\u0008\u0010+\u001a\u00020\u0010H\u0016J\u0008\u0010,\u001a\u00020\rH\u0016J\u0008\u0010-\u001a\u00020\u000bH\u0016J\u0010\u0010.\u001a\u00020&2\u0006\u0010/\u001a\u000200H\u0016J\u0018\u00101\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u001e2\u0006\u00102\u001a\u000203H\u0016J\u0008\u00104\u001a\u00020&H\u0016J\u0008\u00105\u001a\u00020&H\u0016J\u0008\u00106\u001a\u00020&H\u0016J\u0008\u00107\u001a\u00020&H\u0016J\u0008\u00108\u001a\u00020&H\u0016R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010 \u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\"0!j\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\"`#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Lio/sentry/android/replay/WindowRecorder;",
        "Lio/sentry/android/replay/Recorder;",
        "Lio/sentry/android/replay/OnRootViewsChangedListener;",
        "Lio/sentry/android/replay/ExecutorProvider;",
        "options",
        "Lio/sentry/SentryOptions;",
        "screenshotRecorderCallback",
        "Lio/sentry/android/replay/ScreenshotRecorderCallback;",
        "windowCallback",
        "Lio/sentry/android/replay/WindowCallback;",
        "mainLooperHandler",
        "Lio/sentry/android/replay/util/MainLooperHandler;",
        "replayExecutor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "(Lio/sentry/SentryOptions;Lio/sentry/android/replay/ScreenshotRecorderCallback;Lio/sentry/android/replay/WindowCallback;Lio/sentry/android/replay/util/MainLooperHandler;Ljava/util/concurrent/ScheduledExecutorService;)V",
        "backgroundProcessingHandler",
        "Landroid/os/Handler;",
        "backgroundProcessingHandlerLock",
        "Lio/sentry/util/AutoClosableReentrantLock;",
        "backgroundProcessingHandlerThread",
        "Landroid/os/HandlerThread;",
        "capturer",
        "Lio/sentry/android/replay/WindowRecorder$Capturer;",
        "capturerLock",
        "isRecording",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "lastKnownWindowSize",
        "Landroid/graphics/Point;",
        "rootLayoutListeners",
        "Ljava/util/WeakHashMap;",
        "Landroid/view/View;",
        "Landroid/view/View$OnLayoutChangeListener;",
        "rootViews",
        "Ljava/util/ArrayList;",
        "Ljava/lang/ref/WeakReference;",
        "Lkotlin/collections/ArrayList;",
        "rootViewsLock",
        "attachLayoutListener",
        "",
        "root",
        "close",
        "detachLayoutListener",
        "determineWindowSize",
        "getBackgroundHandler",
        "getExecutor",
        "getMainLooperHandler",
        "onConfigurationChanged",
        "config",
        "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "onRootViewsChanged",
        "added",
        "",
        "pause",
        "reset",
        "resume",
        "start",
        "stop",
        "Capturer",
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
.field private volatile backgroundProcessingHandler:Landroid/os/Handler;

.field private final backgroundProcessingHandlerLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private volatile backgroundProcessingHandlerThread:Landroid/os/HandlerThread;

.field private volatile capturer:Lio/sentry/android/replay/WindowRecorder$Capturer;

.field private final capturerLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastKnownWindowSize:Landroid/graphics/Point;

.field private final mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

.field private final options:Lio/sentry/SentryOptions;

.field private final replayExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final rootLayoutListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroid/view/View$OnLayoutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final rootViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rootViewsLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final screenshotRecorderCallback:Lio/sentry/android/replay/ScreenshotRecorderCallback;

.field private final windowCallback:Lio/sentry/android/replay/WindowCallback;


# direct methods
.method public static synthetic $r8$lambda$1iVIUnMWKLmOuTiA-y-n4rvuK0U(Lio/sentry/android/replay/WindowRecorder;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lio/sentry/android/replay/WindowRecorder;->attachLayoutListener$lambda$0(Lio/sentry/android/replay/WindowRecorder;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/WindowRecorder;->$stable:I

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/ScreenshotRecorderCallback;Lio/sentry/android/replay/WindowCallback;Lio/sentry/android/replay/util/MainLooperHandler;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "screenshotRecorderCallback"    # Lio/sentry/android/replay/ScreenshotRecorderCallback;
    .param p3, "windowCallback"    # Lio/sentry/android/replay/WindowCallback;
    .param p4, "mainLooperHandler"    # Lio/sentry/android/replay/util/MainLooperHandler;
    .param p5, "replayExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainLooperHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replayExecutor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lio/sentry/android/replay/WindowRecorder;->options:Lio/sentry/SentryOptions;

    .line 28
    iput-object p2, p0, Lio/sentry/android/replay/WindowRecorder;->screenshotRecorderCallback:Lio/sentry/android/replay/ScreenshotRecorderCallback;

    .line 29
    iput-object p3, p0, Lio/sentry/android/replay/WindowRecorder;->windowCallback:Lio/sentry/android/replay/WindowCallback;

    .line 30
    iput-object p4, p0, Lio/sentry/android/replay/WindowRecorder;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    .line 31
    iput-object p5, p0, Lio/sentry/android/replay/WindowRecorder;->replayExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->rootViews:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->lastKnownWindowSize:Landroid/graphics/Point;

    .line 37
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->rootLayoutListeners:Ljava/util/WeakHashMap;

    .line 38
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->rootViewsLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 39
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->capturerLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 40
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->backgroundProcessingHandlerLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 26
    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/ScreenshotRecorderCallback;Lio/sentry/android/replay/WindowCallback;Lio/sentry/android/replay/util/MainLooperHandler;Ljava/util/concurrent/ScheduledExecutorService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 26
    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_0

    .line 28
    const/4 p2, 0x0

    move-object v2, p2

    goto :goto_0

    .line 26
    :cond_0
    move-object v2, p2

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lio/sentry/android/replay/WindowRecorder;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/ScreenshotRecorderCallback;Lio/sentry/android/replay/WindowCallback;Lio/sentry/android/replay/util/MainLooperHandler;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 32
    return-void
.end method

.method public static final synthetic access$getLastKnownWindowSize$p(Lio/sentry/android/replay/WindowRecorder;)Landroid/graphics/Point;
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/WindowRecorder;

    .line 24
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->lastKnownWindowSize:Landroid/graphics/Point;

    return-object v0
.end method

.method public static final synthetic access$getRootViews$p(Lio/sentry/android/replay/WindowRecorder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/WindowRecorder;

    .line 24
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->rootViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$getWindowCallback$p(Lio/sentry/android/replay/WindowRecorder;)Lio/sentry/android/replay/WindowCallback;
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/WindowRecorder;

    .line 24
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->windowCallback:Lio/sentry/android/replay/WindowCallback;

    return-object v0
.end method

.method private final attachLayoutListener(Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;

    .line 154
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->rootLayoutListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    nop

    .line 155
    new-instance v0, Lio/sentry/android/replay/WindowRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/sentry/android/replay/WindowRecorder$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/replay/WindowRecorder;)V

    .line 175
    .local v0, "listener":Landroid/view/View$OnLayoutChangeListener;
    iget-object v1, p0, Lio/sentry/android/replay/WindowRecorder;->rootLayoutListeners:Ljava/util/WeakHashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 177
    return-void
.end method

.method private static final attachLayoutListener$lambda$0(Lio/sentry/android/replay/WindowRecorder;Landroid/view/View;IIIIIIII)V
    .locals 5
    .param p0, "this$0"    # Lio/sentry/android/replay/WindowRecorder;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 166
    sub-int v0, p4, p2

    .line 167
    .local v0, "width":I
    sub-int v1, p5, p3

    .line 168
    .local v1, "height":I
    sub-int v2, p8, p6

    .line 169
    .local v2, "oldWidth":I
    sub-int v3, p9, p7

    .line 170
    .local v3, "oldHeight":I
    if-ne v0, v2, :cond_0

    if-ne v1, v3, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v4, p0, Lio/sentry/android/replay/WindowRecorder;->rootViews:Ljava/util/ArrayList;

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    .line 173
    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lio/sentry/android/replay/WindowRecorder;->determineWindowSize(Landroid/view/View;)V

    .line 174
    return-void
.end method

.method private final detachLayoutListener(Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;

    .line 180
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->rootLayoutListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 324
    .local v0, "it":Landroid/view/View$OnLayoutChangeListener;
    const/4 v1, 0x0

    .line 180
    .local v1, "$i$a$-let-WindowRecorder$detachLayoutListener$1":I
    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 181
    .end local v0    # "it":Landroid/view/View$OnLayoutChangeListener;
    .end local v1    # "$i$a$-let-WindowRecorder$detachLayoutListener$1":I
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 284
    invoke-virtual {p0}, Lio/sentry/android/replay/WindowRecorder;->reset()V

    .line 285
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    iget-object v1, p0, Lio/sentry/android/replay/WindowRecorder;->capturer:Lio/sentry/android/replay/WindowRecorder$Capturer;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lio/sentry/android/replay/util/MainLooperHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 286
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->backgroundProcessingHandlerLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    check-cast v0, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Lio/sentry/ISentryLifecycleToken;

    .local v1, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v2, 0x0

    .line 287
    .local v2, "$i$a$-use-WindowRecorder$close$1":I
    iget-object v3, p0, Lio/sentry/android/replay/WindowRecorder;->backgroundProcessingHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 288
    :cond_0
    iget-object v3, p0, Lio/sentry/android/replay/WindowRecorder;->backgroundProcessingHandlerThread:Landroid/os/HandlerThread;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quitSafely()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .end local v1    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v2    # "$i$a$-use-WindowRecorder$close$1":I
    :cond_1
    invoke-static {v0, v4}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 290
    invoke-virtual {p0}, Lio/sentry/android/replay/WindowRecorder;->stop()V

    .line 291
    return-void

    .line 286
    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final determineWindowSize(Landroid/view/View;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-static {p1}, Lio/sentry/android/replay/util/ViewsKt;->hasSize(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lio/sentry/android/replay/WindowRecorder;->lastKnownWindowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lio/sentry/android/replay/WindowRecorder;->lastKnownWindowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-eq v0, v1, :cond_2

    .line 186
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->lastKnownWindowSize:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 187
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->windowCallback:Lio/sentry/android/replay/WindowCallback;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lio/sentry/android/replay/WindowCallback;->onWindowSizeChanged(II)V

    goto :goto_0

    .line 190
    :cond_1
    nop

    .line 191
    new-instance v0, Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;-><init>(Lio/sentry/android/replay/WindowRecorder;Landroid/view/View;)V

    check-cast v0, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 190
    invoke-static {p1, v0}, Lio/sentry/android/replay/util/ViewsKt;->addOnPreDrawListenerSafe(Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 211
    :cond_2
    :goto_0
    return-void
.end method

.method public getBackgroundHandler()Landroid/os/Handler;
    .locals 5

    .line 300
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->backgroundProcessingHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 301
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->backgroundProcessingHandlerLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    check-cast v0, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Lio/sentry/ISentryLifecycleToken;

    .local v1, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v2, 0x0

    .line 302
    .local v2, "$i$a$-use-WindowRecorder$getBackgroundHandler$1":I
    iget-object v3, p0, Lio/sentry/android/replay/WindowRecorder;->backgroundProcessingHandler:Landroid/os/Handler;

    if-nez v3, :cond_1

    .line 303
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "SentryReplayBackgroundProcessing"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lio/sentry/android/replay/WindowRecorder;->backgroundProcessingHandlerThread:Landroid/os/HandlerThread;

    .line 304
    iget-object v3, p0, Lio/sentry/android/replay/WindowRecorder;->backgroundProcessingHandlerThread:Landroid/os/HandlerThread;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 305
    :cond_0
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lio/sentry/android/replay/WindowRecorder;->backgroundProcessingHandlerThread:Landroid/os/HandlerThread;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lio/sentry/android/replay/WindowRecorder;->backgroundProcessingHandler:Landroid/os/Handler;

    .line 307
    :cond_1
    nop

    .end local v1    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v2    # "$i$a$-use-WindowRecorder$getBackgroundHandler$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2

    .line 309
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->backgroundProcessingHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 293
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->replayExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public getMainLooperHandler()Lio/sentry/android/replay/util/MainLooperHandler;
    .locals 1

    .line 295
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    return-object v0
.end method

.method public onConfigurationChanged(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 7
    .param p1, "config"    # Lio/sentry/android/replay/ScreenshotRecorderConfig;

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->capturer:Lio/sentry/android/replay/WindowRecorder$Capturer;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 223
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->capturerLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    check-cast v0, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Lio/sentry/ISentryLifecycleToken;

    .local v2, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v3, 0x0

    .line 224
    .local v3, "$i$a$-use-WindowRecorder$onConfigurationChanged$1":I
    iget-object v4, p0, Lio/sentry/android/replay/WindowRecorder;->capturer:Lio/sentry/android/replay/WindowRecorder$Capturer;

    if-nez v4, :cond_1

    .line 226
    new-instance v4, Lio/sentry/android/replay/WindowRecorder$Capturer;

    iget-object v5, p0, Lio/sentry/android/replay/WindowRecorder;->options:Lio/sentry/SentryOptions;

    iget-object v6, p0, Lio/sentry/android/replay/WindowRecorder;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    invoke-direct {v4, v5, v6}, Lio/sentry/android/replay/WindowRecorder$Capturer;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/util/MainLooperHandler;)V

    iput-object v4, p0, Lio/sentry/android/replay/WindowRecorder;->capturer:Lio/sentry/android/replay/WindowRecorder$Capturer;

    .line 228
    :cond_1
    nop

    .end local v2    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v3    # "$i$a$-use-WindowRecorder$onConfigurationChanged$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-static {v0, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .end local p1    # "config":Lio/sentry/android/replay/ScreenshotRecorderConfig;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p1    # "config":Lio/sentry/android/replay/ScreenshotRecorderConfig;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2

    .line 231
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->capturer:Lio/sentry/android/replay/WindowRecorder$Capturer;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1}, Lio/sentry/android/replay/WindowRecorder$Capturer;->setConfig(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V

    .line 232
    :goto_1
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->capturer:Lio/sentry/android/replay/WindowRecorder$Capturer;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v2, Lio/sentry/android/replay/ScreenshotRecorder;

    iget-object v3, p0, Lio/sentry/android/replay/WindowRecorder;->options:Lio/sentry/SentryOptions;

    move-object v4, p0

    check-cast v4, Lio/sentry/android/replay/ExecutorProvider;

    iget-object v5, p0, Lio/sentry/android/replay/WindowRecorder;->screenshotRecorderCallback:Lio/sentry/android/replay/ScreenshotRecorderCallback;

    invoke-direct {v2, p1, v3, v4, v5}, Lio/sentry/android/replay/ScreenshotRecorder;-><init>(Lio/sentry/android/replay/ScreenshotRecorderConfig;Lio/sentry/SentryOptions;Lio/sentry/android/replay/ExecutorProvider;Lio/sentry/android/replay/ScreenshotRecorderCallback;)V

    invoke-virtual {v0, v2}, Lio/sentry/android/replay/WindowRecorder$Capturer;->setRecorder(Lio/sentry/android/replay/ScreenshotRecorder;)V

    .line 234
    :goto_2
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->rootViews:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 235
    .local v1, "newRoot":Landroid/view/View;
    :cond_5
    if-eqz v1, :cond_6

    .line 236
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->capturer:Lio/sentry/android/replay/WindowRecorder$Capturer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lio/sentry/android/replay/WindowRecorder$Capturer;->getRecorder()Lio/sentry/android/replay/ScreenshotRecorder;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Lio/sentry/android/replay/ScreenshotRecorder;->bind(Landroid/view/View;)V

    .line 240
    :cond_6
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    iget-object v2, p0, Lio/sentry/android/replay/WindowRecorder;->capturer:Lio/sentry/android/replay/WindowRecorder$Capturer;

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lio/sentry/android/replay/util/MainLooperHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    .line 244
    iget-object v2, p0, Lio/sentry/android/replay/WindowRecorder;->capturer:Lio/sentry/android/replay/WindowRecorder$Capturer;

    check-cast v2, Ljava/lang/Runnable;

    .line 245
    nop

    .line 243
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Lio/sentry/android/replay/util/MainLooperHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    .line 242
    nop

    .line 247
    .local v0, "posted":Z
    if-nez v0, :cond_7

    .line 248
    iget-object v2, p0, Lio/sentry/android/replay/WindowRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    .line 249
    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 250
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 248
    const-string v5, "Failed to post the capture runnable, main looper is shutting down."

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    :cond_7
    return-void
.end method

.method public onRootViewsChanged(Landroid/view/View;Z)V
    .locals 8
    .param p1, "root"    # Landroid/view/View;
    .param p2, "added"    # Z

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->rootViewsLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    check-cast v0, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Lio/sentry/ISentryLifecycleToken;

    .local v1, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v2, 0x0

    .line 120
    .local v2, "$i$a$-use-WindowRecorder$onRootViewsChanged$1":I
    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 121
    invoke-static {p1}, Lio/sentry/android/replay/WindowsKt;->getPhoneWindow(Landroid/view/View;)Landroid/view/Window;

    move-result-object v4

    if-nez v4, :cond_0

    .line 122
    iget-object v4, p0, Lio/sentry/android/replay/WindowRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v6, "Root view does not have a phone window, skipping."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    nop

    .line 119
    .end local v1    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v2    # "$i$a$-use-WindowRecorder$onRootViewsChanged$1":I
    invoke-static {v0, v3}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    .line 126
    .restart local v1    # "it":Lio/sentry/ISentryLifecycleToken;
    .restart local v2    # "$i$a$-use-WindowRecorder$onRootViewsChanged$1":I
    :cond_0
    :try_start_1
    iget-object v4, p0, Lio/sentry/android/replay/WindowRecorder;->rootViews:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v4, p0, Lio/sentry/android/replay/WindowRecorder;->capturer:Lio/sentry/android/replay/WindowRecorder$Capturer;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lio/sentry/android/replay/WindowRecorder$Capturer;->getRecorder()Lio/sentry/android/replay/ScreenshotRecorder;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Lio/sentry/android/replay/ScreenshotRecorder;->bind(Landroid/view/View;)V

    .line 128
    :cond_1
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/WindowRecorder;->determineWindowSize(Landroid/view/View;)V

    .line 129
    invoke-direct {p0, p1}, Lio/sentry/android/replay/WindowRecorder;->attachLayoutListener(Landroid/view/View;)V

    goto :goto_1

    .line 131
    :cond_2
    invoke-direct {p0, p1}, Lio/sentry/android/replay/WindowRecorder;->detachLayoutListener(Landroid/view/View;)V

    .line 132
    iget-object v4, p0, Lio/sentry/android/replay/WindowRecorder;->capturer:Lio/sentry/android/replay/WindowRecorder$Capturer;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lio/sentry/android/replay/WindowRecorder$Capturer;->getRecorder()Lio/sentry/android/replay/ScreenshotRecorder;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, p1}, Lio/sentry/android/replay/ScreenshotRecorder;->unbind(Landroid/view/View;)V

    .line 133
    :cond_3
    iget-object v4, p0, Lio/sentry/android/replay/WindowRecorder;->rootViews:Ljava/util/ArrayList;

    check-cast v4, Ljava/util/List;

    new-instance v5, Lio/sentry/android/replay/WindowRecorder$onRootViewsChanged$1$1;

    invoke-direct {v5, p1}, Lio/sentry/android/replay/WindowRecorder$onRootViewsChanged$1$1;-><init>(Landroid/view/View;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 135
    iget-object v4, p0, Lio/sentry/android/replay/WindowRecorder;->rootViews:Ljava/util/ArrayList;

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_0

    :cond_4
    move-object v4, v3

    .line 136
    .local v4, "newRoot":Landroid/view/View;
    :goto_0
    if-eqz v4, :cond_6

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 137
    iget-object v5, p0, Lio/sentry/android/replay/WindowRecorder;->capturer:Lio/sentry/android/replay/WindowRecorder$Capturer;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lio/sentry/android/replay/WindowRecorder$Capturer;->getRecorder()Lio/sentry/android/replay/ScreenshotRecorder;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5, v4}, Lio/sentry/android/replay/ScreenshotRecorder;->bind(Landroid/view/View;)V

    .line 138
    :cond_5
    invoke-virtual {p0, v4}, Lio/sentry/android/replay/WindowRecorder;->determineWindowSize(Landroid/view/View;)V

    .line 139
    invoke-direct {p0, v4}, Lio/sentry/android/replay/WindowRecorder;->attachLayoutListener(Landroid/view/View;)V

    goto :goto_1

    .line 141
    :cond_6
    nop

    .line 144
    .end local v4    # "newRoot":Landroid/view/View;
    :goto_1
    nop

    .end local v1    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v2    # "$i$a$-use-WindowRecorder$onRootViewsChanged$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    invoke-static {v0, v3}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 145
    return-void

    .line 119
    :catchall_0
    move-exception v1

    .end local p1    # "root":Landroid/view/View;
    .end local p2    # "added":Z
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .restart local p1    # "root":Landroid/view/View;
    .restart local p2    # "added":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public pause()V
    .locals 1

    .line 260
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->capturer:Lio/sentry/android/replay/WindowRecorder$Capturer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/android/replay/WindowRecorder$Capturer;->pause()V

    .line 261
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 11

    .line 264
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->lastKnownWindowSize:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 265
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->rootViewsLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    check-cast v0, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Lio/sentry/ISentryLifecycleToken;

    .local v1, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v2, 0x0

    .line 266
    .local v2, "$i$a$-use-WindowRecorder$reset$1":I
    iget-object v3, p0, Lio/sentry/android/replay/WindowRecorder;->rootViews:Ljava/util/ArrayList;

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 325
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/ref/WeakReference;

    .local v7, "it":Ljava/lang/ref/WeakReference;
    const/4 v8, 0x0

    .line 267
    .local v8, "$i$a$-forEach-WindowRecorder$reset$1$1":I
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 268
    .local v9, "root":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 269
    invoke-direct {p0, v9}, Lio/sentry/android/replay/WindowRecorder;->detachLayoutListener(Landroid/view/View;)V

    .line 270
    iget-object v10, p0, Lio/sentry/android/replay/WindowRecorder;->capturer:Lio/sentry/android/replay/WindowRecorder$Capturer;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lio/sentry/android/replay/WindowRecorder$Capturer;->getRecorder()Lio/sentry/android/replay/ScreenshotRecorder;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10, v9}, Lio/sentry/android/replay/ScreenshotRecorder;->unbind(Landroid/view/View;)V

    .line 272
    :cond_0
    nop

    .line 325
    .end local v7    # "it":Ljava/lang/ref/WeakReference;
    .end local v8    # "$i$a$-forEach-WindowRecorder$reset$1$1":I
    .end local v9    # "root":Landroid/view/View;
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 326
    :cond_1
    nop

    .line 273
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    iget-object v3, p0, Lio/sentry/android/replay/WindowRecorder;->rootViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 274
    nop

    .end local v1    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v2    # "$i$a$-use-WindowRecorder$reset$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 275
    return-void

    .line 265
    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public resume()V
    .locals 1

    .line 256
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->capturer:Lio/sentry/android/replay/WindowRecorder$Capturer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/android/replay/WindowRecorder$Capturer;->resume()V

    .line 257
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 214
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 215
    return-void
.end method

.method public stop()V
    .locals 4

    .line 278
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->capturer:Lio/sentry/android/replay/WindowRecorder$Capturer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/android/replay/WindowRecorder$Capturer;->stop()V

    .line 279
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->capturerLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    check-cast v0, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Lio/sentry/ISentryLifecycleToken;

    .line 324
    .local v1, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v2, 0x0

    .line 279
    .local v2, "$i$a$-use-WindowRecorder$stop$1":I
    const/4 v3, 0x0

    iput-object v3, p0, Lio/sentry/android/replay/WindowRecorder;->capturer:Lio/sentry/android/replay/WindowRecorder$Capturer;

    .end local v1    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v2    # "$i$a$-use-WindowRecorder$stop$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v3}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 280
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 281
    return-void

    .line 279
    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2
.end method
