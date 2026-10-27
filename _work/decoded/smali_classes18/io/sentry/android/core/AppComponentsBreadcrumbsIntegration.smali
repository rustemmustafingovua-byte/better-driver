.class public final Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;
.super Ljava/lang/Object;
.source "AppComponentsBreadcrumbsIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static final DEBOUNCE_WAIT_TIME_MS:J = 0xea60L

.field private static final EMPTY_HINT:Lio/sentry/Hint;


# instance fields
.field private final context:Landroid/content/Context;

.field private options:Lio/sentry/android/core/SentryAndroidOptions;

.field private scopes:Lio/sentry/IScopes;

.field private final trimMemoryDebouncer:Lio/sentry/android/core/internal/util/Debouncer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    sput-object v0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->EMPTY_HINT:Lio/sentry/Hint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lio/sentry/android/core/internal/util/Debouncer;

    .line 40
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidCurrentDateProvider;->getInstance()Lio/sentry/transport/ICurrentDateProvider;

    move-result-object v1

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/sentry/android/core/internal/util/Debouncer;-><init>(Lio/sentry/transport/ICurrentDateProvider;JI)V

    iput-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->trimMemoryDebouncer:Lio/sentry/android/core/internal/util/Debouncer;

    .line 43
    nop

    .line 44
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Context is required"

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->context:Landroid/content/Context;

    .line 45
    return-void
.end method

.method private captureConfigurationChangedBreadcrumb(JLandroid/content/res/Configuration;)V
    .locals 5
    .param p1, "timeMs"    # J
    .param p3, "newConfig"    # Landroid/content/res/Configuration;

    .line 148
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->context:Landroid/content/Context;

    .line 150
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Lio/sentry/android/core/internal/util/DeviceOrientations;->getOrientation(I)Lio/sentry/protocol/Device$DeviceOrientation;

    move-result-object v0

    .line 153
    .local v0, "deviceOrientation":Lio/sentry/protocol/Device$DeviceOrientation;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lio/sentry/protocol/Device$DeviceOrientation;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .local v1, "orientation":Ljava/lang/String;
    goto :goto_0

    .line 156
    .end local v1    # "orientation":Ljava/lang/String;
    :cond_0
    const-string v1, "undefined"

    .line 159
    .restart local v1    # "orientation":Ljava/lang/String;
    :goto_0
    new-instance v2, Lio/sentry/Breadcrumb;

    invoke-direct {v2, p1, p2}, Lio/sentry/Breadcrumb;-><init>(J)V

    .line 160
    .local v2, "breadcrumb":Lio/sentry/Breadcrumb;
    const-string v3, "navigation"

    invoke-virtual {v2, v3}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 161
    const-string v3, "device.orientation"

    invoke-virtual {v2, v3}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 162
    const-string v3, "position"

    invoke-virtual {v2, v3, v1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v2, v3}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 165
    new-instance v3, Lio/sentry/Hint;

    invoke-direct {v3}, Lio/sentry/Hint;-><init>()V

    .line 166
    .local v3, "hint":Lio/sentry/Hint;
    const-string v4, "android:configuration"

    invoke-virtual {v3, v4, p3}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    iget-object v4, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->scopes:Lio/sentry/IScopes;

    invoke-interface {v4, v2, v3}, Lio/sentry/IScopes;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    .line 170
    .end local v0    # "deviceOrientation":Lio/sentry/protocol/Device$DeviceOrientation;
    .end local v1    # "orientation":Ljava/lang/String;
    .end local v2    # "breadcrumb":Lio/sentry/Breadcrumb;
    .end local v3    # "hint":Lio/sentry/Hint;
    :cond_1
    return-void
.end method

.method private captureLowMemoryBreadcrumb(JI)V
    .locals 3
    .param p1, "timeMs"    # J
    .param p3, "level"    # I

    .line 134
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0, p1, p2}, Lio/sentry/Breadcrumb;-><init>(J)V

    .line 136
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    const-string v1, "system"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 137
    const-string v1, "device.event"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 138
    const-string v1, "Low memory"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    .line 139
    const-string v1, "action"

    const-string v2, "LOW_MEMORY"

    invoke-virtual {v0, v1, v2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    const-string v1, "level"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 142
    iget-object v1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->scopes:Lio/sentry/IScopes;

    sget-object v2, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->EMPTY_HINT:Lio/sentry/Hint;

    invoke-interface {v1, v0, v2}, Lio/sentry/IScopes;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    .line 144
    .end local v0    # "breadcrumb":Lio/sentry/Breadcrumb;
    :cond_0
    return-void
.end method

.method private executeInBackground(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 173
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    .line 175
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 178
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 179
    const-string v4, "Failed to submit app components breadcrumb task"

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v1

    .line 84
    .local v1, "ignored":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 86
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v4, v0, [Ljava/lang/Object;

    .line 87
    const-string v5, "It was not possible to unregisterComponentCallbacks"

    invoke-interface {v2, v3, v1, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .end local v1    # "ignored":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "AppComponentsBreadcrumbsIntegration removed."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_1
    return-void
.end method

.method synthetic lambda$onConfigurationChanged$0$io-sentry-android-core-AppComponentsBreadcrumbsIntegration(JLandroid/content/res/Configuration;)V
    .locals 0
    .param p1, "now"    # J
    .param p3, "newConfig"    # Landroid/content/res/Configuration;

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->captureConfigurationChangedBreadcrumb(JLandroid/content/res/Configuration;)V

    return-void
.end method

.method synthetic lambda$onTrimMemory$1$io-sentry-android-core-AppComponentsBreadcrumbsIntegration(JI)V
    .locals 0
    .param p1, "now"    # J
    .param p3, "level"    # I

    .line 130
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->captureLowMemoryBreadcrumb(JI)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 100
    .local v0, "now":J
    new-instance v2, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1, p1}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;JLandroid/content/res/Configuration;)V

    invoke-direct {p0, v2}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->executeInBackground(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 107
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .line 111
    const/16 v0, 0x28

    if-ge p1, v0, :cond_0

    .line 121
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->trimMemoryDebouncer:Lio/sentry/android/core/internal/util/Debouncer;

    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/Debouncer;->checkForDebounce()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    return-void

    .line 129
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 130
    .local v0, "now":J
    new-instance v2, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, v1, p1}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;JI)V

    invoke-direct {p0, v2}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->executeInBackground(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method public register(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 5
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 49
    const-string v0, "Scopes are required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IScopes;

    iput-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->scopes:Lio/sentry/IScopes;

    .line 50
    nop

    .line 52
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 55
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 56
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v2, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 60
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppComponentBreadcrumbs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 57
    const-string v3, "AppComponentsBreadcrumbsIntegration enabled: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppComponentBreadcrumbs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 66
    nop

    .line 67
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "AppComponentsBreadcrumbsIntegration installed."

    new-array v4, v0, [Ljava/lang/Object;

    .line 68
    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const-string v1, "AppComponentsBreadcrumbs"

    invoke-static {v1}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    goto :goto_1

    .line 70
    :catchall_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppComponentBreadcrumbs(Z)V

    .line 72
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "ComponentCallbacks2 is not available."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void
.end method
