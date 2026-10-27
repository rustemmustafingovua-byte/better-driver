.class public final Lio/sentry/android/core/FeedbackShakeIntegration;
.super Ljava/lang/Object;
.source "FeedbackShakeIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lio/sentry/SentryFeedbackOptions$IShakeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/FeedbackShakeIntegration$DialogFactory;,
        Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;
    }
.end annotation


# instance fields
.field private final application:Landroid/app/Application;

.field private volatile currentActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private dialogFactory:Lio/sentry/android/core/FeedbackShakeIntegration$DialogFactory;

.field private volatile enabled:Z

.field private options:Lio/sentry/android/core/SentryAndroidOptions;

.field private final shakeDetector:Lio/sentry/android/core/SentryShakeDetector;

.field private final visibleDialogs:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->enabled:Z

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->visibleDialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 198
    new-instance v0, Lio/sentry/android/core/FeedbackShakeIntegration$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lio/sentry/android/core/FeedbackShakeIntegration$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->dialogFactory:Lio/sentry/android/core/FeedbackShakeIntegration$DialogFactory;

    .line 57
    const-string v0, "Application is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->application:Landroid/app/Application;

    .line 58
    new-instance v0, Lio/sentry/android/core/SentryShakeDetector;

    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/android/core/SentryShakeDetector;-><init>(Lio/sentry/ILogger;)V

    iput-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->shakeDetector:Lio/sentry/android/core/SentryShakeDetector;

    .line 59
    return-void
.end method

.method private hasDialogOn(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 173
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->visibleDialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;

    .line 174
    .local v1, "visibleDialog":Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;
    invoke-static {v1}, Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;->access$000(Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;->access$100(Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 175
    const/4 v0, 0x1

    return v0

    .line 177
    .end local v1    # "visibleDialog":Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;
    :cond_0
    goto :goto_0

    .line 178
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$new$1(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 199
    new-instance v0, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;

    invoke-direct {v0, p0}, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;->create()Lio/sentry/android/core/SentryUserFeedbackForm;

    move-result-object v0

    return-object v0
.end method

.method private removeDialog(Landroid/app/Dialog;)Z
    .locals 5
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "removed":Z
    iget-object v1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->visibleDialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;

    .line 162
    .local v2, "visibleDialog":Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;
    invoke-static {v2}, Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;->access$000(Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Dialog;

    .line 163
    .local v3, "trackedDialog":Landroid/app/Dialog;
    if-ne v3, p1, :cond_2

    .line 164
    iget-object v4, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->visibleDialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    move v0, v4

    .end local v0    # "removed":Z
    .local v4, "removed":Z
    goto :goto_3

    .line 165
    .end local v4    # "removed":Z
    .restart local v0    # "removed":Z
    :cond_2
    if-nez v3, :cond_3

    .line 166
    iget-object v4, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->visibleDialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 168
    .end local v2    # "visibleDialog":Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;
    .end local v3    # "trackedDialog":Landroid/app/Dialog;
    :cond_3
    :goto_3
    goto :goto_0

    .line 169
    :cond_4
    return v0
.end method

.method private startShakeDetection(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 259
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-nez v0, :cond_0

    .line 260
    return-void

    .line 263
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/FeedbackShakeIntegration;->stopShakeDetection()V

    .line 268
    invoke-direct {p0, p1}, Lio/sentry/android/core/FeedbackShakeIntegration;->hasDialogOn(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->shakeDetector:Lio/sentry/android/core/SentryShakeDetector;

    new-instance v1, Lio/sentry/android/core/FeedbackShakeIntegration$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/sentry/android/core/FeedbackShakeIntegration$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/FeedbackShakeIntegration;)V

    invoke-virtual {v0, p1, v1}, Lio/sentry/android/core/SentryShakeDetector;->start(Landroid/content/Context;Lio/sentry/android/core/SentryShakeDetector$Listener;)V

    .line 309
    return-void
.end method

.method private stopShakeDetection()V
    .locals 1

    .line 312
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->shakeDetector:Lio/sentry/android/core/SentryShakeDetector;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryShakeDetector;->stop()V

    .line 313
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Lio/sentry/android/core/FeedbackShakeIntegration;->disableOnShake()V

    .line 219
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->visibleDialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 220
    return-void
.end method

.method public declared-synchronized disableOnShake()V
    .locals 1

    monitor-enter p0

    .line 120
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 121
    monitor-exit p0

    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->enabled:Z

    .line 125
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->application:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 126
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->shakeDetector:Lio/sentry/android/core/SentryShakeDetector;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryShakeDetector;->close()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->currentActivityRef:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 119
    .end local p0    # "this":Lio/sentry/android/core/FeedbackShakeIntegration;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized enableOnShake()V
    .locals 5

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 83
    .local v0, "options":Lio/sentry/android/core/SentryAndroidOptions;
    iget-boolean v1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->enabled:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->enabled:Z

    .line 91
    iget-object v1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->shakeDetector:Lio/sentry/android/core/SentryShakeDetector;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryShakeDetector;->reopen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    nop

    .line 98
    :try_start_1
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v1

    new-instance v2, Lio/sentry/android/core/FeedbackShakeIntegration$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lio/sentry/android/core/FeedbackShakeIntegration$$ExternalSyntheticLambda3;-><init>(Lio/sentry/android/core/FeedbackShakeIntegration;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 99
    invoke-interface {v1, v2}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v1

    .line 101
    .local v1, "t":Ljava/lang/Throwable;
    nop

    .line 102
    :try_start_2
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Failed to submit shake detector initialization."

    .line 103
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    const-string v1, "FeedbackShake"

    invoke-static {v1}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->application:Landroid/app/Application;

    invoke-virtual {v1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 108
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "FeedbackShakeIntegration installed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-static {}, Lio/sentry/android/core/CurrentActivityHolder;->getInstance()Lio/sentry/android/core/CurrentActivityHolder;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/CurrentActivityHolder;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 112
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_1

    .line 113
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->currentActivityRef:Ljava/lang/ref/WeakReference;

    .line 114
    invoke-direct {p0, v1}, Lio/sentry/android/core/FeedbackShakeIntegration;->startShakeDetection(Landroid/app/Activity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    .end local p0    # "this":Lio/sentry/android/core/FeedbackShakeIntegration;
    :cond_1
    monitor-exit p0

    return-void

    .line 84
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 81
    .end local v0    # "options":Lio/sentry/android/core/SentryAndroidOptions;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method getDialogActivity()Landroid/app/Activity;
    .locals 3

    .line 184
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->visibleDialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;

    .line 185
    .local v1, "visibleDialog":Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;
    invoke-static {v1}, Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;->access$000(Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 186
    invoke-static {v1}, Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;->access$100(Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 188
    .end local v1    # "visibleDialog":Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;
    :cond_0
    goto :goto_0

    .line 189
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isOnShakeEnabled()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->enabled:Z

    return v0
.end method

.method synthetic lambda$enableOnShake$0$io-sentry-android-core-FeedbackShakeIntegration(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 3
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 99
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->shakeDetector:Lio/sentry/android/core/SentryShakeDetector;

    iget-object v1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->application:Landroid/app/Application;

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/sentry/android/core/SentryShakeDetector;->init(Landroid/content/Context;Lio/sentry/ILogger;)V

    return-void
.end method

.method synthetic lambda$startShakeDetection$2$io-sentry-android-core-FeedbackShakeIntegration(Landroid/app/Activity;)V
    .locals 5
    .param p1, "active"    # Landroid/app/Activity;

    .line 289
    iget-boolean v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->enabled:Z

    if-eqz v0, :cond_2

    .line 290
    invoke-direct {p0, p1}, Lio/sentry/android/core/FeedbackShakeIntegration;->hasDialogOn(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 291
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 292
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 295
    :cond_0
    const/4 v0, 0x0

    .line 297
    .local v0, "dialog":Landroid/app/Dialog;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->dialogFactory:Lio/sentry/android/core/FeedbackShakeIntegration$DialogFactory;

    invoke-interface {v1, p1}, Lio/sentry/android/core/FeedbackShakeIntegration$DialogFactory;->create(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    move-object v0, v1

    .line 298
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    goto :goto_0

    .line 299
    :catchall_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {p0, v0}, Lio/sentry/android/core/FeedbackShakeIntegration;->onDialogGone(Landroid/app/Dialog;)V

    .line 303
    :cond_1
    iget-object v2, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 304
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 305
    const-string v4, "Failed to show feedback dialog on shake."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 293
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_2
    :goto_1
    return-void
.end method

.method synthetic lambda$startShakeDetection$3$io-sentry-android-core-FeedbackShakeIntegration()V
    .locals 4

    .line 274
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->currentActivityRef:Ljava/lang/ref/WeakReference;

    .line 275
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 276
    .local v1, "active":Landroid/app/Activity;
    :goto_0
    invoke-static {}, Lio/sentry/android/core/AppState;->getInstance()Lio/sentry/android/core/AppState;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/core/AppState;->isInBackground()Ljava/lang/Boolean;

    move-result-object v2

    .line 277
    .local v2, "inBackground":Ljava/lang/Boolean;
    if-eqz v1, :cond_2

    iget-object v3, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->enabled:Z

    if-eqz v3, :cond_2

    .line 280
    invoke-direct {p0, v1}, Lio/sentry/android/core/FeedbackShakeIntegration;->hasDialogOn(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 281
    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 284
    :cond_1
    new-instance v3, Lio/sentry/android/core/FeedbackShakeIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lio/sentry/android/core/FeedbackShakeIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/FeedbackShakeIntegration;Landroid/app/Activity;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 308
    return-void

    .line 282
    :cond_2
    :goto_1
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 243
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 256
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 233
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->currentActivityRef:Ljava/lang/ref/WeakReference;

    .line 234
    .local v0, "currentRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 235
    .local v2, "current":Landroid/app/Activity;
    :goto_0
    if-ne p1, v2, :cond_1

    .line 236
    invoke-direct {p0}, Lio/sentry/android/core/FeedbackShakeIntegration;->stopShakeDetection()V

    .line 237
    iput-object v1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->currentActivityRef:Ljava/lang/ref/WeakReference;

    .line 239
    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 224
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->currentActivityRef:Ljava/lang/ref/WeakReference;

    .line 225
    invoke-direct {p0, p1}, Lio/sentry/android/core/FeedbackShakeIntegration;->startShakeDetection(Landroid/app/Activity;)V

    .line 226
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 253
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 246
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 249
    return-void
.end method

.method onDialogGone(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 147
    invoke-direct {p0, p1}, Lio/sentry/android/core/FeedbackShakeIntegration;->removeDialog(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->currentActivityRef:Ljava/lang/ref/WeakReference;

    .line 151
    .local v0, "currentRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 152
    .local v1, "current":Landroid/app/Activity;
    :goto_0
    iget-boolean v2, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->enabled:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 153
    invoke-direct {p0, v1}, Lio/sentry/android/core/FeedbackShakeIntegration;->startShakeDetection(Landroid/app/Activity;)V

    .line 155
    :cond_2
    return-void
.end method

.method onDialogVisible(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 2
    .param p1, "host"    # Landroid/app/Activity;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .line 141
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->visibleDialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;

    invoke-direct {v1, p1, p2}, Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-direct {p0}, Lio/sentry/android/core/FeedbackShakeIntegration;->stopShakeDetection()V

    .line 143
    return-void
.end method

.method public register(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 2
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "sentryOptions"    # Lio/sentry/SentryOptions;

    .line 63
    nop

    .line 65
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    .line 66
    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    .line 67
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 64
    const-string v1, "SentryAndroidOptions is required"

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 70
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 73
    .local v0, "options":Lio/sentry/android/core/SentryAndroidOptions;
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/sentry/SentryFeedbackOptions;->setShakeController(Lio/sentry/SentryFeedbackOptions$IShakeController;)V

    .line 75
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryFeedbackOptions;->isUseShakeGesture()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {p0}, Lio/sentry/android/core/FeedbackShakeIntegration;->enableOnShake()V

    .line 78
    :cond_1
    return-void
.end method

.method setDialogFactory(Lio/sentry/android/core/FeedbackShakeIntegration$DialogFactory;)V
    .locals 0
    .param p1, "dialogFactory"    # Lio/sentry/android/core/FeedbackShakeIntegration$DialogFactory;

    .line 203
    iput-object p1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->dialogFactory:Lio/sentry/android/core/FeedbackShakeIntegration$DialogFactory;

    .line 204
    return-void
.end method
