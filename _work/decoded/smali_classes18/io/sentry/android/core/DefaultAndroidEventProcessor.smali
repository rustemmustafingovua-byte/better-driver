.class final Lio/sentry/android/core/DefaultAndroidEventProcessor;
.super Ljava/lang/Object;
.source "DefaultAndroidEventProcessor.java"

# interfaces
.implements Lio/sentry/internal/eventprocessor/SentryEventProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/DefaultAndroidEventProcessor$DeviceInfoCacheThreadFactory;
    }
.end annotation


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field final context:Landroid/content/Context;

.field private final deviceFamily:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final deviceInfoUtil:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lio/sentry/android/core/DeviceInfoUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p3, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lio/sentry/util/LazyEvaluator;

    new-instance v1, Lio/sentry/android/core/DefaultAndroidEventProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/sentry/android/core/DefaultAndroidEventProcessor$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    iput-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceFamily:Lio/sentry/util/LazyEvaluator;

    .line 50
    nop

    .line 52
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 51
    const-string v1, "The application context is required."

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->context:Landroid/content/Context;

    .line 53
    nop

    .line 54
    const-string v0, "The BuildInfoProvider is required."

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/BuildInfoProvider;

    iput-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 55
    const-string v0, "The options object is required."

    invoke-static {p3, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 61
    new-instance v0, Lio/sentry/android/core/DefaultAndroidEventProcessor$DeviceInfoCacheThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/core/DefaultAndroidEventProcessor$DeviceInfoCacheThreadFactory;-><init>(Lio/sentry/android/core/DefaultAndroidEventProcessor$1;)V

    .line 62
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 64
    .local v0, "executorService":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    new-instance v1, Lio/sentry/android/core/DefaultAndroidEventProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p3}, Lio/sentry/android/core/DefaultAndroidEventProcessor$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/DefaultAndroidEventProcessor;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 65
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .local v1, "deviceInfoUtil":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lio/sentry/android/core/DeviceInfoUtil;>;"
    goto :goto_0

    .line 66
    .end local v1    # "deviceInfoUtil":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lio/sentry/android/core/DeviceInfoUtil;>;"
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    const/4 v2, 0x0

    .line 68
    .local v2, "deviceInfoUtil":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lio/sentry/android/core/DeviceInfoUtil;>;"
    invoke-virtual {p3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Device info caching task rejected."

    invoke-interface {v3, v4, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 70
    .end local v2    # "deviceInfoUtil":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lio/sentry/android/core/DeviceInfoUtil;>;"
    .local v1, "deviceInfoUtil":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lio/sentry/android/core/DeviceInfoUtil;>;"
    :goto_0
    iput-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceInfoUtil:Ljava/util/concurrent/Future;

    .line 71
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 72
    return-void
.end method

.method private static fixExceptionOrder(Lio/sentry/SentryEvent;)V
    .locals 9
    .param p0, "event"    # Lio/sentry/SentryEvent;

    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, "reverseExceptions":Z
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->getExceptions()Ljava/util/List;

    move-result-object v1

    .line 123
    .local v1, "exceptions":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryException;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 124
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/protocol/SentryException;

    .line 125
    .local v2, "lastException":Lio/sentry/protocol/SentryException;
    const-string v3, "java.lang"

    invoke-virtual {v2}, Lio/sentry/protocol/SentryException;->getModule()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {v2}, Lio/sentry/protocol/SentryException;->getStacktrace()Lio/sentry/protocol/SentryStackTrace;

    move-result-object v3

    .line 127
    .local v3, "stacktrace":Lio/sentry/protocol/SentryStackTrace;
    if-eqz v3, :cond_1

    .line 128
    invoke-virtual {v3}, Lio/sentry/protocol/SentryStackTrace;->getFrames()Ljava/util/List;

    move-result-object v4

    .line 129
    .local v4, "frames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    if-eqz v4, :cond_1

    .line 130
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/sentry/protocol/SentryStackFrame;

    .line 131
    .local v6, "frame":Lio/sentry/protocol/SentryStackFrame;
    nop

    .line 132
    invoke-virtual {v6}, Lio/sentry/protocol/SentryStackFrame;->getModule()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.internal.os.RuntimeInit$MethodAndArgsCaller"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 134
    goto :goto_1

    .line 136
    .end local v6    # "frame":Lio/sentry/protocol/SentryStackFrame;
    :cond_0
    goto :goto_0

    .line 142
    .end local v2    # "lastException":Lio/sentry/protocol/SentryException;
    .end local v3    # "stacktrace":Lio/sentry/protocol/SentryStackTrace;
    .end local v4    # "frames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 143
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 145
    :cond_2
    return-void
.end method

.method static synthetic lambda$new$0()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/android/core/ContextUtils;->getFamily(Lio/sentry/ILogger;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private mergeOS(Lio/sentry/SentryBaseEvent;)V
    .locals 5
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 208
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getOperatingSystem()Lio/sentry/protocol/OperatingSystem;

    move-result-object v0

    .line 210
    .local v0, "currentOS":Lio/sentry/protocol/OperatingSystem;
    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceInfoUtil:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 212
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceInfoUtil:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/core/DeviceInfoUtil;

    invoke-virtual {v1}, Lio/sentry/android/core/DeviceInfoUtil;->getOperatingSystem()Lio/sentry/protocol/OperatingSystem;

    move-result-object v1

    .line 214
    .local v1, "androidOS":Lio/sentry/protocol/OperatingSystem;
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/sentry/protocol/Contexts;->setOperatingSystem(Lio/sentry/protocol/OperatingSystem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "androidOS":Lio/sentry/protocol/OperatingSystem;
    goto :goto_0

    .line 215
    :catchall_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Failed to retrieve os system"

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 219
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Failed to retrieve device info"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    :goto_1
    if-eqz v0, :cond_2

    .line 224
    invoke-virtual {v0}, Lio/sentry/protocol/OperatingSystem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "osNameKey":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "os_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 228
    :cond_1
    const-string v1, "os_1"

    .line 230
    :goto_2
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .end local v1    # "osNameKey":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private mergeUser(Lio/sentry/SentryBaseEvent;)V
    .locals 2
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 172
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    .line 173
    .local v0, "user":Lio/sentry/protocol/User;
    if-nez v0, :cond_0

    .line 174
    new-instance v1, Lio/sentry/protocol/User;

    invoke-direct {v1}, Lio/sentry/protocol/User;-><init>()V

    move-object v0, v1

    .line 175
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setUser(Lio/sentry/protocol/User;)V

    .line 179
    :cond_0
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 180
    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->context:Landroid/content/Context;

    invoke-static {v1}, Lio/sentry/android/core/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/User;->setId(Ljava/lang/String;)V

    .line 182
    :cond_1
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getDataCollectionResolver()Lio/sentry/DataCollectionResolver;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/DataCollectionResolver;->isUserInfo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    const-string v1, "{{auto}}"

    invoke-virtual {v0, v1}, Lio/sentry/protocol/User;->setIpAddress(Ljava/lang/String;)V

    .line 185
    :cond_2
    return-void
.end method

.method private processNonCachedEvent(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)V
    .locals 2
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 293
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/App;

    move-result-object v0

    .line 294
    .local v0, "app":Lio/sentry/protocol/App;
    if-nez v0, :cond_0

    .line 295
    new-instance v1, Lio/sentry/protocol/App;

    invoke-direct {v1}, Lio/sentry/protocol/App;-><init>()V

    move-object v0, v1

    .line 297
    :cond_0
    invoke-direct {p0, v0, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setAppExtras(Lio/sentry/protocol/App;Lio/sentry/Hint;)V

    .line 298
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setPackageInfo(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/App;)V

    .line 299
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    .line 300
    return-void
.end method

.method private setAppExtras(Lio/sentry/protocol/App;Lio/sentry/Hint;)V
    .locals 3
    .param p1, "app"    # Lio/sentry/protocol/App;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 353
    iget-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/sentry/android/core/ContextUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/protocol/App;->setAppName(Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpanWithFallback(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    .line 356
    .local v0, "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestamp()Lio/sentry/SentryDate;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/DateUtils;->toUtilDate(Lio/sentry/SentryDate;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/protocol/App;->setAppStartTime(Ljava/util/Date;)V

    .line 361
    :cond_0
    invoke-static {p2}, Lio/sentry/util/HintUtils;->isFromHybridSdk(Lio/sentry/Hint;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lio/sentry/protocol/App;->getInForeground()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_1

    .line 364
    invoke-static {}, Lio/sentry/android/core/AppState;->getInstance()Lio/sentry/android/core/AppState;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/AppState;->isInBackground()Ljava/lang/Boolean;

    move-result-object v1

    .line 365
    .local v1, "isBackground":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 366
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/sentry/protocol/App;->setInForeground(Ljava/lang/Boolean;)V

    .line 369
    .end local v1    # "isBackground":Ljava/lang/Boolean;
    :cond_1
    return-void
.end method

.method private setCommons(Lio/sentry/SentryBaseEvent;ZZ)V
    .locals 0
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;
    .param p2, "errorEvent"    # Z
    .param p3, "applyScopeData"    # Z

    .line 151
    invoke-direct {p0, p1}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->mergeUser(Lio/sentry/SentryBaseEvent;)V

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setDevice(Lio/sentry/SentryBaseEvent;ZZ)V

    .line 153
    invoke-direct {p0, p1}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setSideLoadedInfo(Lio/sentry/SentryBaseEvent;)V

    .line 154
    return-void
.end method

.method private setDevice(Lio/sentry/SentryBaseEvent;ZZ)V
    .locals 4
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;
    .param p2, "errorEvent"    # Z
    .param p3, "applyScopeData"    # Z

    .line 191
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getDevice()Lio/sentry/protocol/Device;

    move-result-object v0

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceInfoUtil:Ljava/util/concurrent/Future;

    const-string v1, "Failed to retrieve device info"

    if-eqz v0, :cond_0

    .line 194
    nop

    .line 195
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceInfoUtil:Ljava/util/concurrent/Future;

    .line 196
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/android/core/DeviceInfoUtil;

    invoke-virtual {v2, p2, p3}, Lio/sentry/android/core/DeviceInfoUtil;->collectDeviceInformation(ZZ)Lio/sentry/protocol/Device;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Contexts;->setDevice(Lio/sentry/protocol/Device;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {v2, v3, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 201
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :goto_1
    invoke-direct {p0, p1}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->mergeOS(Lio/sentry/SentryBaseEvent;)V

    .line 205
    :cond_1
    return-void
.end method

.method private setDevice(Lio/sentry/SentryLogEvent;)V
    .locals 4
    .param p1, "event"    # Lio/sentry/SentryLogEvent;

    .line 236
    :try_start_0
    const-string v0, "device.brand"

    new-instance v1, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v2, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lio/sentry/SentryLogEvent;->setAttribute(Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;)V

    .line 239
    const-string v0, "device.model"

    new-instance v1, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v2, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lio/sentry/SentryLogEvent;->setAttribute(Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;)V

    .line 242
    const-string v0, "device.family"

    new-instance v1, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v2, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    iget-object v3, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceFamily:Lio/sentry/util/LazyEvaluator;

    .line 244
    invoke-virtual {v3}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    .line 242
    invoke-virtual {p1, v0, v1}, Lio/sentry/SentryLogEvent;->setAttribute(Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to retrieve device info"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private setDevice(Lio/sentry/SentryMetricsEvent;)V
    .locals 4
    .param p1, "event"    # Lio/sentry/SentryMetricsEvent;

    .line 264
    :try_start_0
    const-string v0, "device.brand"

    new-instance v1, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v2, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lio/sentry/SentryMetricsEvent;->setAttribute(Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;)V

    .line 267
    const-string v0, "device.model"

    new-instance v1, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v2, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lio/sentry/SentryMetricsEvent;->setAttribute(Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;)V

    .line 270
    const-string v0, "device.family"

    new-instance v1, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v2, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    iget-object v3, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceFamily:Lio/sentry/util/LazyEvaluator;

    .line 272
    invoke-virtual {v3}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    .line 270
    invoke-virtual {p1, v0, v1}, Lio/sentry/SentryMetricsEvent;->setAttribute(Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to retrieve device info"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private setDist(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;
    .param p2, "versionCode"    # Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getDist()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 348
    invoke-virtual {p1, p2}, Lio/sentry/SentryBaseEvent;->setDist(Ljava/lang/String;)V

    .line 350
    :cond_0
    return-void
.end method

.method private setOs(Lio/sentry/SentryLogEvent;)V
    .locals 4
    .param p1, "event"    # Lio/sentry/SentryLogEvent;

    .line 252
    :try_start_0
    const-string v0, "os.name"

    new-instance v1, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v2, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    const-string v3, "Android"

    invoke-direct {v1, v2, v3}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lio/sentry/SentryLogEvent;->setAttribute(Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;)V

    .line 254
    const-string v0, "os.version"

    new-instance v1, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v2, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lio/sentry/SentryLogEvent;->setAttribute(Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to retrieve os system"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private setOs(Lio/sentry/SentryMetricsEvent;)V
    .locals 4
    .param p1, "event"    # Lio/sentry/SentryMetricsEvent;

    .line 280
    :try_start_0
    const-string v0, "os.name"

    new-instance v1, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v2, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    const-string v3, "Android"

    invoke-direct {v1, v2, v3}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lio/sentry/SentryMetricsEvent;->setAttribute(Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;)V

    .line 282
    const-string v0, "os.version"

    new-instance v1, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v2, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lio/sentry/SentryMetricsEvent;->setAttribute(Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to retrieve os system"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private setPackageInfo(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/App;)V
    .locals 7
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;
    .param p2, "app"    # Lio/sentry/protocol/App;

    .line 323
    iget-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 325
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 324
    const/16 v3, 0x1000

    invoke-static {v0, v3, v1, v2}, Lio/sentry/android/core/ContextUtils;->getPackageInfo(Landroid/content/Context;ILio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 326
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1

    .line 327
    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {v0, v1}, Lio/sentry/android/core/ContextUtils;->getVersionCode(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "versionCode":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setDist(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)V

    .line 331
    const/4 v2, 0x0

    .line 332
    .local v2, "deviceInfoUtil":Lio/sentry/android/core/DeviceInfoUtil;
    iget-object v3, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceInfoUtil:Ljava/util/concurrent/Future;

    const-string v4, "Failed to retrieve device info"

    if-eqz v3, :cond_0

    .line 334
    :try_start_0
    iget-object v3, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceInfoUtil:Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/android/core/DeviceInfoUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 337
    :goto_0
    goto :goto_1

    .line 335
    :catchall_0
    move-exception v3

    .line 336
    .local v3, "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v5}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {v5, v6, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 339
    :cond_0
    iget-object v3, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v5, v4, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    :goto_1
    iget-object v3, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {v0, v3, v2, p2}, Lio/sentry/android/core/ContextUtils;->setAppPackageInfo(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/DeviceInfoUtil;Lio/sentry/protocol/App;)V

    .line 344
    .end local v1    # "versionCode":Ljava/lang/String;
    .end local v2    # "deviceInfoUtil":Lio/sentry/android/core/DeviceInfoUtil;
    :cond_1
    return-void
.end method

.method private setSideLoadedInfo(Lio/sentry/SentryBaseEvent;)V
    .locals 6
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 383
    iget-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceInfoUtil:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 385
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceInfoUtil:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/DeviceInfoUtil;

    invoke-virtual {v0}, Lio/sentry/android/core/DeviceInfoUtil;->getSideLoadedInfo()Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

    move-result-object v0

    .line 386
    .local v0, "sideLoadedInfo":Lio/sentry/android/core/ContextUtils$SideLoadedInfo;
    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;->asTags()Ljava/util/Map;

    move-result-object v1

    .line 388
    .local v1, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 389
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lio/sentry/SentryBaseEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 392
    .end local v0    # "sideLoadedInfo":Lio/sentry/android/core/ContextUtils$SideLoadedInfo;
    .end local v1    # "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error getting side loaded info."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 394
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    goto :goto_1

    .line 396
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Failed to retrieve device info"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    :goto_1
    return-void
.end method

.method private setThreads(Lio/sentry/SentryEvent;Lio/sentry/Hint;)V
    .locals 5
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 303
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThreads()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 304
    invoke-static {p2}, Lio/sentry/util/HintUtils;->isFromHybridSdk(Lio/sentry/Hint;)Z

    move-result v0

    .line 306
    .local v0, "isHybridSDK":Z
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThreads()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/protocol/SentryThread;

    .line 307
    .local v2, "thread":Lio/sentry/protocol/SentryThread;
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->getInstance()Lio/sentry/android/core/internal/util/AndroidThreadChecker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->isMainThread(Lio/sentry/protocol/SentryThread;)Z

    move-result v3

    .line 310
    .local v3, "isMainThread":Z
    invoke-virtual {v2}, Lio/sentry/protocol/SentryThread;->isCurrent()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_0

    .line 311
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/sentry/protocol/SentryThread;->setCurrent(Ljava/lang/Boolean;)V

    .line 315
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {v2}, Lio/sentry/protocol/SentryThread;->isMain()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    .line 316
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/sentry/protocol/SentryThread;->setMain(Ljava/lang/Boolean;)V

    .line 318
    .end local v2    # "thread":Lio/sentry/protocol/SentryThread;
    .end local v3    # "isMainThread":Z
    :cond_1
    goto :goto_0

    .line 320
    .end local v0    # "isHybridSDK":Z
    :cond_2
    return-void
.end method

.method private shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z
    .locals 4
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 158
    invoke-static {p2}, Lio/sentry/util/HintUtils;->shouldApplyScopeData(Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x1

    return v0

    .line 161
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 162
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 166
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 163
    const-string v3, "Event was cached so not applying data relevant to the current app execution/version: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getDefaultUser(Landroid/content/Context;)Lio/sentry/protocol/User;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 377
    new-instance v0, Lio/sentry/protocol/User;

    invoke-direct {v0}, Lio/sentry/protocol/User;-><init>()V

    .line 378
    .local v0, "user":Lio/sentry/protocol/User;
    invoke-static {p1}, Lio/sentry/android/core/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/User;->setId(Ljava/lang/String;)V

    .line 379
    return-object v0
.end method

.method public getOrder()Ljava/lang/Long;
    .locals 2

    .line 429
    const-wide/16 v0, 0x1f40

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$1$io-sentry-android-core-DefaultAndroidEventProcessor(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;
    .locals 1
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lio/sentry/android/core/DeviceInfoUtil;->getInstance(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;

    move-result-object v0

    return-object v0
.end method

.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 2
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 76
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v0

    .line 77
    .local v0, "applyScopeData":Z
    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->processNonCachedEvent(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)V

    .line 82
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setThreads(Lio/sentry/SentryEvent;Lio/sentry/Hint;)V

    .line 85
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setCommons(Lio/sentry/SentryBaseEvent;ZZ)V

    .line 87
    invoke-static {p1}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->fixExceptionOrder(Lio/sentry/SentryEvent;)V

    .line 89
    return-object p1
.end method

.method public process(Lio/sentry/SentryLogEvent;)Lio/sentry/SentryLogEvent;
    .locals 0
    .param p1, "event"    # Lio/sentry/SentryLogEvent;

    .line 94
    invoke-direct {p0, p1}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setDevice(Lio/sentry/SentryLogEvent;)V

    .line 95
    invoke-direct {p0, p1}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setOs(Lio/sentry/SentryLogEvent;)V

    .line 96
    return-object p1
.end method

.method public process(Lio/sentry/SentryMetricsEvent;Lio/sentry/Hint;)Lio/sentry/SentryMetricsEvent;
    .locals 0
    .param p1, "event"    # Lio/sentry/SentryMetricsEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 102
    invoke-direct {p0, p1}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setDevice(Lio/sentry/SentryMetricsEvent;)V

    .line 103
    invoke-direct {p0, p1}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setOs(Lio/sentry/SentryMetricsEvent;)V

    .line 104
    return-object p1
.end method

.method public process(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/SentryReplayEvent;
    .locals 2
    .param p1, "event"    # Lio/sentry/SentryReplayEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 417
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v0

    .line 418
    .local v0, "applyScopeData":Z
    if-eqz v0, :cond_0

    .line 419
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->processNonCachedEvent(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)V

    .line 422
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setCommons(Lio/sentry/SentryBaseEvent;ZZ)V

    .line 424
    return-object p1
.end method

.method public process(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 2
    .param p1, "transaction"    # Lio/sentry/protocol/SentryTransaction;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 403
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v0

    .line 405
    .local v0, "applyScopeData":Z
    if-eqz v0, :cond_0

    .line 406
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->processNonCachedEvent(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)V

    .line 409
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setCommons(Lio/sentry/SentryBaseEvent;ZZ)V

    .line 411
    return-object p1
.end method
