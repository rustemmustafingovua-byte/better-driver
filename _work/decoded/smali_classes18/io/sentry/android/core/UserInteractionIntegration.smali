.class public final Lio/sentry/android/core/UserInteractionIntegration;
.super Ljava/lang/Object;
.source "UserInteractionIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final application:Landroid/app/Application;

.field private final isAndroidxLifecycleAvailable:Z

.field private options:Lio/sentry/android/core/SentryAndroidOptions;

.field private scopes:Lio/sentry/IScopes;

.field private final wrappedWindows:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/Window;",
            "Ljava/lang/ref/WeakReference<",
            "Lio/sentry/android/core/internal/gestures/SentryWindowCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final wrappedWindowsLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lio/sentry/util/LoadClass;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "classLoader"    # Lio/sentry/util/LoadClass;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/UserInteractionIntegration;->wrappedWindows:Ljava/util/WeakHashMap;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/UserInteractionIntegration;->wrappedWindowsLock:Ljava/lang/Object;

    .line 48
    const-string v0, "Application is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lio/sentry/android/core/UserInteractionIntegration;->application:Landroid/app/Application;

    .line 49
    iget-object v0, p0, Lio/sentry/android/core/UserInteractionIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 50
    const-string v1, "androidx.lifecycle.Lifecycle"

    invoke-virtual {p2, v1, v0}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/android/core/UserInteractionIntegration;->isAndroidxLifecycleAvailable:Z

    .line 51
    return-void
.end method

.method private startTracking(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 55
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_1

    .line 56
    iget-object v1, p0, Lio/sentry/android/core/UserInteractionIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lio/sentry/android/core/UserInteractionIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "Window was null in startTracking"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :cond_0
    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lio/sentry/android/core/UserInteractionIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lio/sentry/android/core/UserInteractionIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v1, :cond_4

    .line 63
    iget-object v1, p0, Lio/sentry/android/core/UserInteractionIntegration;->wrappedWindowsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/core/UserInteractionIntegration;->wrappedWindows:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 65
    .local v2, "cached":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/sentry/android/core/internal/gestures/SentryWindowCallback;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 66
    monitor-exit v1

    return-void

    .line 68
    .end local v2    # "cached":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/sentry/android/core/internal/gestures/SentryWindowCallback;>;"
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 71
    .local v1, "delegate":Landroid/view/Window$Callback;
    if-nez v1, :cond_3

    .line 72
    new-instance v2, Lio/sentry/android/core/internal/gestures/NoOpWindowCallback;

    invoke-direct {v2}, Lio/sentry/android/core/internal/gestures/NoOpWindowCallback;-><init>()V

    move-object v1, v2

    goto :goto_0

    .line 71
    :cond_3
    move-object v2, v1

    .line 75
    .end local v1    # "delegate":Landroid/view/Window$Callback;
    .local v2, "delegate":Landroid/view/Window$Callback;
    :goto_0
    new-instance v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    iget-object v3, p0, Lio/sentry/android/core/UserInteractionIntegration;->scopes:Lio/sentry/IScopes;

    iget-object v4, p0, Lio/sentry/android/core/UserInteractionIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {v1, p1, v3, v4}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;-><init>(Landroid/app/Activity;Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V

    move-object v3, v1

    .line 77
    .local v3, "gestureListener":Lio/sentry/android/core/internal/gestures/SentryGestureListener;
    new-instance v1, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;

    iget-object v4, p0, Lio/sentry/android/core/UserInteractionIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {v1, v2, p1, v3, v4}, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;-><init>(Landroid/view/Window$Callback;Landroid/content/Context;Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/SentryOptions;)V

    move-object v4, v1

    .line 79
    .local v4, "wrapper":Lio/sentry/android/core/internal/gestures/SentryWindowCallback;
    invoke-virtual {v0, v4}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 80
    iget-object v5, p0, Lio/sentry/android/core/UserInteractionIntegration;->wrappedWindowsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 81
    :try_start_1
    iget-object v1, p0, Lio/sentry/android/core/UserInteractionIntegration;->wrappedWindows:Ljava/util/WeakHashMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 68
    .end local v2    # "delegate":Landroid/view/Window$Callback;
    .end local v3    # "gestureListener":Lio/sentry/android/core/internal/gestures/SentryGestureListener;
    .end local v4    # "wrapper":Lio/sentry/android/core/internal/gestures/SentryWindowCallback;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 84
    :cond_4
    :goto_1
    return-void
.end method

.method private stopTracking(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 87
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 88
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_1

    .line 89
    iget-object v1, p0, Lio/sentry/android/core/UserInteractionIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lio/sentry/android/core/UserInteractionIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Window was null in stopTracking"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_0
    return-void

    .line 94
    :cond_1
    invoke-direct {p0, v0}, Lio/sentry/android/core/UserInteractionIntegration;->unwrapWindow(Landroid/view/Window;)V

    .line 95
    return-void
.end method

.method private unwrapWindow(Landroid/view/Window;)V
    .locals 4
    .param p1, "window"    # Landroid/view/Window;

    .line 98
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 99
    .local v0, "current":Landroid/view/Window$Callback;
    instance-of v1, v0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 100
    move-object v1, v0

    check-cast v1, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;

    invoke-virtual {v1}, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->stopTracking()V

    .line 101
    move-object v1, v0

    check-cast v1, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;

    invoke-virtual {v1}, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->getDelegate()Landroid/view/Window$Callback;

    move-result-object v1

    instance-of v1, v1, Lio/sentry/android/core/internal/gestures/NoOpWindowCallback;

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p1, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_0

    .line 104
    :cond_0
    move-object v1, v0

    check-cast v1, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;

    invoke-virtual {v1}, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->getDelegate()Landroid/view/Window$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 106
    :goto_0
    iget-object v1, p0, Lio/sentry/android/core/UserInteractionIntegration;->wrappedWindowsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/core/UserInteractionIntegration;->wrappedWindows:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 117
    :cond_1
    iget-object v1, p0, Lio/sentry/android/core/UserInteractionIntegration;->wrappedWindowsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_1
    iget-object v3, p0, Lio/sentry/android/core/UserInteractionIntegration;->wrappedWindows:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 119
    .local v3, "cached":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/sentry/android/core/internal/gestures/SentryWindowCallback;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;

    .line 120
    .end local v3    # "cached":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/sentry/android/core/internal/gestures/SentryWindowCallback;>;"
    .local v2, "ours":Lio/sentry/android/core/internal/gestures/SentryWindowCallback;
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    if-eqz v2, :cond_3

    .line 122
    invoke-virtual {v2}, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->stopTracking()V

    .line 124
    :cond_3
    return-void

    .line 120
    .end local v2    # "ours":Lio/sentry/android/core/internal/gestures/SentryWindowCallback;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lio/sentry/android/core/UserInteractionIntegration;->application:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 192
    iget-object v0, p0, Lio/sentry/android/core/UserInteractionIntegration;->wrappedWindowsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/sentry/android/core/UserInteractionIntegration;->wrappedWindows:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 194
    .local v1, "snapshot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Window;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Window;

    .line 196
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 197
    invoke-direct {p0, v2}, Lio/sentry/android/core/UserInteractionIntegration;->unwrapWindow(Landroid/view/Window;)V

    .line 199
    .end local v2    # "window":Landroid/view/Window;
    :cond_0
    goto :goto_0

    .line 200
    :cond_1
    iget-object v2, p0, Lio/sentry/android/core/UserInteractionIntegration;->wrappedWindowsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 201
    :try_start_1
    iget-object v0, p0, Lio/sentry/android/core/UserInteractionIntegration;->wrappedWindows:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 202
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    iget-object v0, p0, Lio/sentry/android/core/UserInteractionIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lio/sentry/android/core/UserInteractionIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "UserInteractionIntegration removed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :cond_2
    return-void

    .line 202
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 194
    .end local v1    # "snapshot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Window;>;"
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 127
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 149
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 139
    invoke-direct {p0, p1}, Lio/sentry/android/core/UserInteractionIntegration;->stopTracking(Landroid/app/Activity;)V

    .line 140
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 134
    invoke-direct {p0, p1}, Lio/sentry/android/core/UserInteractionIntegration;->startTracking(Landroid/app/Activity;)V

    .line 135
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 146
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 130
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 143
    return-void
.end method

.method public register(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 6
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 153
    nop

    .line 155
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 154
    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/UserInteractionIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 158
    const-string v0, "Scopes are required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IScopes;

    iput-object v0, p0, Lio/sentry/android/core/UserInteractionIntegration;->scopes:Lio/sentry/IScopes;

    .line 160
    iget-object v0, p0, Lio/sentry/android/core/UserInteractionIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 161
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableUserInteractionBreadcrumbs()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/sentry/android/core/UserInteractionIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 162
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableUserInteractionTracing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 163
    .local v0, "integrationEnabled":Z
    :goto_2
    iget-object v2, p0, Lio/sentry/android/core/UserInteractionIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 164
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 165
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "UserInteractionIntegration enabled: %s"

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    if-eqz v0, :cond_3

    .line 168
    iget-object v2, p0, Lio/sentry/android/core/UserInteractionIntegration;->application:Landroid/app/Application;

    invoke-virtual {v2, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 169
    iget-object v2, p0, Lio/sentry/android/core/UserInteractionIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "UserInteractionIntegration installed."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    const-string v1, "UserInteraction"

    invoke-static {v1}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    .line 173
    iget-boolean v1, p0, Lio/sentry/android/core/UserInteractionIntegration;->isAndroidxLifecycleAvailable:Z

    if-eqz v1, :cond_3

    .line 174
    invoke-static {}, Lio/sentry/android/core/CurrentActivityHolder;->getInstance()Lio/sentry/android/core/CurrentActivityHolder;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/CurrentActivityHolder;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 175
    .local v1, "activity":Landroid/app/Activity;
    instance-of v2, v1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v2, :cond_3

    .line 176
    move-object v2, v1

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v2, v3, :cond_3

    .line 178
    invoke-direct {p0, v1}, Lio/sentry/android/core/UserInteractionIntegration;->startTracking(Landroid/app/Activity;)V

    .line 183
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_3
    return-void
.end method
