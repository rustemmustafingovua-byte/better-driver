.class public final Lio/sentry/android/replay/gestures/GestureRecorder;
.super Ljava/lang/Object;
.source "GestureRecorder.kt"

# interfaces
.implements Lio/sentry/android/replay/OnRootViewsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGestureRecorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GestureRecorder.kt\nio/sentry/android/replay/gestures/GestureRecorder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,123:1\n1863#2,2:124\n1#3:126\n*S KotlinDebug\n*F\n+ 1 GestureRecorder.kt\nio/sentry/android/replay/gestures/GestureRecorder\n*L\n42#1:124,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u001bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0006\u0010\u0018\u001a\u00020\u0014J\u000c\u0010\u0019\u001a\u00020\u0014*\u00020\nH\u0002J\u000c\u0010\u001a\u001a\u00020\u0014*\u00020\nH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0007\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008j\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\t0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lio/sentry/android/replay/gestures/GestureRecorder;",
        "Lio/sentry/android/replay/OnRootViewsChangedListener;",
        "options",
        "Lio/sentry/SentryOptions;",
        "touchRecorderCallback",
        "Lio/sentry/android/replay/gestures/TouchRecorderCallback;",
        "(Lio/sentry/SentryOptions;Lio/sentry/android/replay/gestures/TouchRecorderCallback;)V",
        "rootViews",
        "Ljava/util/ArrayList;",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/view/View;",
        "Lkotlin/collections/ArrayList;",
        "rootViewsLock",
        "Lio/sentry/util/AutoClosableReentrantLock;",
        "wrappedWindows",
        "Ljava/util/WeakHashMap;",
        "Landroid/view/Window;",
        "Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;",
        "wrappedWindowsLock",
        "onRootViewsChanged",
        "",
        "root",
        "added",
        "",
        "stop",
        "startGestureTracking",
        "stopGestureTracking",
        "SentryReplayGestureRecorder",
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

.field private final touchRecorderCallback:Lio/sentry/android/replay/gestures/TouchRecorderCallback;

.field private final wrappedWindows:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/Window;",
            "Ljava/lang/ref/WeakReference<",
            "Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final wrappedWindowsLock:Lio/sentry/util/AutoClosableReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/gestures/GestureRecorder;->$stable:I

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/gestures/TouchRecorderCallback;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "touchRecorderCallback"    # Lio/sentry/android/replay/gestures/TouchRecorderCallback;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchRecorderCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->options:Lio/sentry/SentryOptions;

    .line 18
    iput-object p2, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->touchRecorderCallback:Lio/sentry/android/replay/gestures/TouchRecorderCallback;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->rootViews:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->rootViewsLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 25
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->wrappedWindows:Ljava/util/WeakHashMap;

    .line 26
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->wrappedWindowsLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 16
    return-void
.end method

.method private final startGestureTracking(Landroid/view/View;)V
    .locals 9
    .param p1, "$this$startGestureTracking"    # Landroid/view/View;

    .line 48
    invoke-static {p1}, Lio/sentry/android/replay/WindowsKt;->getPhoneWindow(Landroid/view/View;)Landroid/view/Window;

    move-result-object v0

    .line 49
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_0

    .line 50
    iget-object v1, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Window is invalid, not tracking gestures"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->wrappedWindowsLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    check-cast v1, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Lio/sentry/ISentryLifecycleToken;

    .local v2, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v3, 0x0

    .line 55
    .local v3, "$i$a$-use-GestureRecorder$startGestureTracking$1":I
    iget-object v4, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->wrappedWindows:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_2

    .line 56
    nop

    .line 54
    .end local v2    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v3    # "$i$a$-use-GestureRecorder$startGestureTracking$1":I
    invoke-static {v1, v5}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    .line 56
    .restart local v2    # "it":Lio/sentry/ISentryLifecycleToken;
    .restart local v3    # "$i$a$-use-GestureRecorder$startGestureTracking$1":I
    :cond_2
    nop

    .line 58
    nop

    .end local v2    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v3    # "$i$a$-use-GestureRecorder$startGestureTracking$1":I
    :try_start_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 54
    invoke-static {v1, v5}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 60
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 61
    .local v1, "delegate":Landroid/view/Window$Callback;
    new-instance v2, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;

    iget-object v3, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->options:Lio/sentry/SentryOptions;

    iget-object v4, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->touchRecorderCallback:Lio/sentry/android/replay/gestures/TouchRecorderCallback;

    invoke-direct {v2, v3, v4, v1}, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/gestures/TouchRecorderCallback;Landroid/view/Window$Callback;)V

    .line 62
    .local v2, "wrapper":Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;
    move-object v3, v2

    check-cast v3, Landroid/view/Window$Callback;

    invoke-virtual {v0, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 63
    iget-object v3, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->wrappedWindowsLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v3}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v3

    check-cast v3, Ljava/lang/AutoCloseable;

    :try_start_2
    move-object v4, v3

    check-cast v4, Lio/sentry/ISentryLifecycleToken;

    .line 126
    .local v4, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v6, 0x0

    .line 63
    .local v6, "$i$a$-use-GestureRecorder$startGestureTracking$2":I
    iget-object v7, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->wrappedWindows:Ljava/util/WeakHashMap;

    check-cast v7, Ljava/util/Map;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v4    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v6    # "$i$a$-use-GestureRecorder$startGestureTracking$2":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3, v5}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v4

    .end local v0    # "window":Landroid/view/Window;
    .end local v1    # "delegate":Landroid/view/Window$Callback;
    .end local v2    # "wrapper":Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;
    .end local p1    # "$this$startGestureTracking":Landroid/view/View;
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v0    # "window":Landroid/view/Window;
    .restart local v1    # "delegate":Landroid/view/Window$Callback;
    .restart local v2    # "wrapper":Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;
    .restart local p1    # "$this$startGestureTracking":Landroid/view/View;
    :catchall_1
    move-exception v5

    invoke-static {v3, v4}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v5

    .line 54
    .end local v1    # "delegate":Landroid/view/Window$Callback;
    .end local v2    # "wrapper":Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;
    :catchall_2
    move-exception v2

    .end local v0    # "window":Landroid/view/Window;
    .end local p1    # "$this$startGestureTracking":Landroid/view/View;
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .restart local v0    # "window":Landroid/view/Window;
    .restart local p1    # "$this$startGestureTracking":Landroid/view/View;
    :catchall_3
    move-exception v3

    invoke-static {v1, v2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private final stopGestureTracking(Landroid/view/View;)V
    .locals 8
    .param p1, "$this$stopGestureTracking"    # Landroid/view/View;

    .line 67
    invoke-static {p1}, Lio/sentry/android/replay/WindowsKt;->getPhoneWindow(Landroid/view/View;)Landroid/view/Window;

    move-result-object v0

    .line 68
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_0

    .line 69
    iget-object v1, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Window was null in stopGestureTracking"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return-void

    .line 73
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 74
    .local v1, "callback":Landroid/view/Window$Callback;
    instance-of v2, v1, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 75
    move-object v2, v1

    check-cast v2, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;

    iget-object v2, v2, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;->delegate:Landroid/view/Window$Callback;

    invoke-virtual {v0, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 76
    iget-object v2, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->wrappedWindowsLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v2}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v2

    check-cast v2, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v4, v2

    check-cast v4, Lio/sentry/ISentryLifecycleToken;

    .line 126
    .local v4, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v5, 0x0

    .line 76
    .local v5, "$i$a$-use-GestureRecorder$stopGestureTracking$1":I
    iget-object v6, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->wrappedWindows:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v5    # "$i$a$-use-GestureRecorder$stopGestureTracking$1":I
    invoke-static {v2, v3}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v3

    .end local v0    # "window":Landroid/view/Window;
    .end local v1    # "callback":Landroid/view/Window$Callback;
    .end local p1    # "$this$stopGestureTracking":Landroid/view/View;
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v0    # "window":Landroid/view/Window;
    .restart local v1    # "callback":Landroid/view/Window$Callback;
    .restart local p1    # "$this$stopGestureTracking":Landroid/view/View;
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v4

    .line 83
    :cond_1
    const/4 v2, 0x0

    .line 84
    .local v2, "ours":Ljava/lang/Object;
    iget-object v4, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->wrappedWindowsLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v4}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v4

    check-cast v4, Ljava/lang/AutoCloseable;

    :try_start_2
    move-object v5, v4

    check-cast v5, Lio/sentry/ISentryLifecycleToken;

    .local v5, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v6, 0x0

    .line 85
    .local v6, "$i$a$-use-GestureRecorder$stopGestureTracking$2":I
    iget-object v7, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->wrappedWindows:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;

    goto :goto_0

    :cond_2
    move-object v7, v3

    :goto_0
    move-object v2, v7

    .line 86
    iget-object v7, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->wrappedWindows:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 84
    .end local v5    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v6    # "$i$a$-use-GestureRecorder$stopGestureTracking$2":I
    invoke-static {v4, v3}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 88
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;->inert()V

    .line 89
    :cond_3
    return-void

    .line 84
    :catchall_2
    move-exception v3

    .end local v0    # "window":Landroid/view/Window;
    .end local v1    # "callback":Landroid/view/Window$Callback;
    .end local v2    # "ours":Ljava/lang/Object;
    .end local p1    # "$this$stopGestureTracking":Landroid/view/View;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .restart local v0    # "window":Landroid/view/Window;
    .restart local v1    # "callback":Landroid/view/Window$Callback;
    .restart local v2    # "ours":Ljava/lang/Object;
    .restart local p1    # "$this$stopGestureTracking":Landroid/view/View;
    :catchall_3
    move-exception v5

    invoke-static {v4, v3}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public onRootViewsChanged(Landroid/view/View;Z)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;
    .param p2, "added"    # Z

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->rootViewsLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    check-cast v0, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Lio/sentry/ISentryLifecycleToken;

    .local v1, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-use-GestureRecorder$onRootViewsChanged$1":I
    if-eqz p2, :cond_0

    .line 31
    iget-object v3, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->rootViews:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-direct {p0, p1}, Lio/sentry/android/replay/gestures/GestureRecorder;->startGestureTracking(Landroid/view/View;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 34
    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/android/replay/gestures/GestureRecorder;->stopGestureTracking(Landroid/view/View;)V

    .line 35
    iget-object v3, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->rootViews:Ljava/util/ArrayList;

    check-cast v3, Ljava/util/List;

    new-instance v4, Lio/sentry/android/replay/gestures/GestureRecorder$onRootViewsChanged$1$1;

    invoke-direct {v4, p1}, Lio/sentry/android/replay/gestures/GestureRecorder$onRootViewsChanged$1$1;-><init>(Landroid/view/View;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :goto_0
    nop

    .line 29
    .end local v1    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v2    # "$i$a$-use-GestureRecorder$onRootViewsChanged$1":I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 38
    return-void

    .line 29
    :catchall_0
    move-exception v1

    .end local p1    # "root":Landroid/view/View;
    .end local p2    # "added":Z
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p1    # "root":Landroid/view/View;
    .restart local p2    # "added":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final stop()V
    .locals 10

    .line 41
    iget-object v0, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->rootViewsLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    check-cast v0, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Lio/sentry/ISentryLifecycleToken;

    .local v1, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v2, 0x0

    .line 42
    .local v2, "$i$a$-use-GestureRecorder$stop$1":I
    iget-object v3, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->rootViews:Ljava/util/ArrayList;

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 124
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

    .line 42
    .local v8, "$i$a$-forEach-GestureRecorder$stop$1$1":I
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    if-eqz v9, :cond_0

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v9}, Lio/sentry/android/replay/gestures/GestureRecorder;->stopGestureTracking(Landroid/view/View;)V

    .line 124
    .end local v7    # "it":Ljava/lang/ref/WeakReference;
    .end local v8    # "$i$a$-forEach-GestureRecorder$stop$1$1":I
    :cond_0
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 125
    :cond_1
    nop

    .line 43
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    iget-object v3, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->rootViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 44
    nop

    .end local v1    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v2    # "$i$a$-use-GestureRecorder$stop$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 45
    return-void

    .line 41
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
