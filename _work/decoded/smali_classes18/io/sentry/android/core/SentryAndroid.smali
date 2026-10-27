.class public final Lio/sentry/android/core/SentryAndroid;
.super Ljava/lang/Object;
.source "SentryAndroid.java"


# static fields
.field private static final FRAGMENT_CLASS_NAME:Ljava/lang/String; = "androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks"

.field static final SENTRY_DISTRIBUTION_INTEGRATION_CLASS_NAME:Ljava/lang/String; = "io.sentry.android.distribution.DistributionIntegration"

.field static final SENTRY_FRAGMENT_INTEGRATION_CLASS_NAME:Ljava/lang/String; = "io.sentry.android.fragment.FragmentLifecycleIntegration"

.field static final SENTRY_REPLAY_INTEGRATION_CLASS_NAME:Ljava/lang/String; = "io.sentry.android.replay.ReplayIntegration"

.field static final SENTRY_TIMBER_INTEGRATION_CLASS_NAME:Ljava/lang/String; = "io.sentry.android.timber.SentryTimberIntegration"

.field private static final TIMBER_CLASS_NAME:Ljava/lang/String; = "timber.log.Timber"

.field private static final sdkInitMillis:J

.field protected static final staticLock:Lio/sentry/util/AutoClosableReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lio/sentry/android/core/SentryAndroid;->sdkInitMillis:J

    .line 51
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    sput-object v0, Lio/sentry/android/core/SentryAndroid;->staticLock:Lio/sentry/util/AutoClosableReentrantLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deduplicateIntegrations(Lio/sentry/SentryOptions;ZZ)V
    .locals 7
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "isFragmentAvailable"    # Z
    .param p2, "isTimberAvailable"    # Z

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v0, "timberIntegrations":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Integration;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v1, "fragmentIntegrations":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Integration;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v2, "systemEventsIntegrations":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Integration;>;"
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/Integration;

    .line 248
    .local v4, "integration":Lio/sentry/Integration;
    if-eqz p1, :cond_0

    .line 249
    instance-of v5, v4, Lio/sentry/android/fragment/FragmentLifecycleIntegration;

    if-eqz v5, :cond_0

    .line 250
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_0
    if-eqz p2, :cond_1

    .line 254
    instance-of v5, v4, Lio/sentry/android/timber/SentryTimberIntegration;

    if-eqz v5, :cond_1

    .line 255
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_1
    instance-of v5, v4, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;

    if-eqz v5, :cond_2

    .line 259
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v4    # "integration":Lio/sentry/Integration;
    :cond_2
    goto :goto_0

    .line 263
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 264
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_4

    .line 265
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/sentry/Integration;

    .line 266
    .local v5, "integration":Lio/sentry/Integration;
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 264
    .end local v5    # "integration":Lio/sentry/Integration;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 270
    .end local v3    # "i":I
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_5

    .line 271
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_5

    .line 272
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/sentry/Integration;

    .line 273
    .restart local v5    # "integration":Lio/sentry/Integration;
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 271
    .end local v5    # "integration":Lio/sentry/Integration;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 277
    .end local v3    # "i":I
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_6

    .line 278
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_6

    .line 279
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/sentry/Integration;

    .line 280
    .restart local v5    # "integration":Lio/sentry/Integration;
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 278
    .end local v5    # "integration":Lio/sentry/Integration;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 283
    .end local v3    # "i":I
    :cond_6
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 62
    new-instance v0, Lio/sentry/android/core/AndroidLogger;

    invoke-direct {v0}, Lio/sentry/android/core/AndroidLogger;-><init>()V

    invoke-static {p0, v0}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/ILogger;)V

    .line 63
    return-void
.end method

.method public static init(Landroid/content/Context;Lio/sentry/ILogger;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 72
    new-instance v0, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, p1, v0}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/Sentry$OptionsConfiguration;)V

    .line 73
    return-void
.end method

.method public static init(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/Sentry$OptionsConfiguration;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/sentry/ILogger;",
            "Lio/sentry/Sentry$OptionsConfiguration<",
            "Lio/sentry/android/core/SentryAndroidOptions;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p2, "configuration":Lio/sentry/Sentry$OptionsConfiguration;, "Lio/sentry/Sentry$OptionsConfiguration<Lio/sentry/android/core/SentryAndroidOptions;>;"
    const-string v0, "Failed to initialize Sentry\'s SDK"

    const-string v1, "Fatal error during SentryAndroid.init(...)"

    const-string v2, "SentryAndroid.init"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 102
    :try_start_0
    sget-object v2, Lio/sentry/android/core/SentryAndroid;->staticLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v2}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 103
    .local v2, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_1
    new-instance v3, Lio/sentry/android/core/SentryAndroidOptionsContainer;

    invoke-direct {v3}, Lio/sentry/android/core/SentryAndroidOptionsContainer;-><init>()V

    new-instance v4, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1, p0, p2}, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda0;-><init>(Lio/sentry/ILogger;Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;)V

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lio/sentry/Sentry;->init(Lio/sentry/OptionsContainer;Lio/sentry/Sentry$OptionsConfiguration;Z)V

    .line 188
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v3

    .line 189
    .local v3, "scopes":Lio/sentry/IScopes;
    invoke-static {}, Lio/sentry/android/core/ContextUtils;->isForegroundImportance()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    invoke-interface {v3}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->isEnableAutoSessionTracking()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 195
    .local v4, "sessionStarted":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v6, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda1;

    invoke-direct {v6, v4}, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {v3, v6}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 202
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_0

    .line 203
    invoke-interface {v3}, Lio/sentry/IScopes;->startSession()V

    .line 206
    .end local v4    # "sessionStarted":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    invoke-interface {v3}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v4

    invoke-interface {v4, v5}, Lio/sentry/ReplayController;->onAppForegrounded(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    .end local v3    # "scopes":Lio/sentry/IScopes;
    :cond_1
    if-eqz v2, :cond_2

    :try_start_2
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 227
    .end local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 228
    nop

    .line 229
    return-void

    .line 102
    .restart local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    :try_start_3
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "logger":Lio/sentry/ILogger;
    .end local p2    # "configuration":Lio/sentry/Sentry$OptionsConfiguration;, "Lio/sentry/Sentry$OptionsConfiguration<Lio/sentry/android/core/SentryAndroidOptions;>;"
    :cond_3
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 227
    .end local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "logger":Lio/sentry/ILogger;
    .restart local p2    # "configuration":Lio/sentry/Sentry$OptionsConfiguration;, "Lio/sentry/Sentry$OptionsConfiguration<Lio/sentry/android/core/SentryAndroidOptions;>;"
    :catchall_2
    move-exception v0

    goto :goto_1

    .line 222
    :catch_0
    move-exception v2

    .line 223
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_5
    sget-object v3, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    invoke-interface {p1, v3, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "logger":Lio/sentry/ILogger;
    .end local p2    # "configuration":Lio/sentry/Sentry$OptionsConfiguration;, "Lio/sentry/Sentry$OptionsConfiguration<Lio/sentry/android/core/SentryAndroidOptions;>;"
    throw v1

    .line 218
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "logger":Lio/sentry/ILogger;
    .restart local p2    # "configuration":Lio/sentry/Sentry$OptionsConfiguration;, "Lio/sentry/Sentry$OptionsConfiguration<Lio/sentry/android/core/SentryAndroidOptions;>;"
    :catch_1
    move-exception v2

    .line 219
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    sget-object v3, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    invoke-interface {p1, v3, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "logger":Lio/sentry/ILogger;
    .end local p2    # "configuration":Lio/sentry/Sentry$OptionsConfiguration;, "Lio/sentry/Sentry$OptionsConfiguration<Lio/sentry/android/core/SentryAndroidOptions;>;"
    throw v1

    .line 214
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "logger":Lio/sentry/ILogger;
    .restart local p2    # "configuration":Lio/sentry/Sentry$OptionsConfiguration;, "Lio/sentry/Sentry$OptionsConfiguration<Lio/sentry/android/core/SentryAndroidOptions;>;"
    :catch_2
    move-exception v2

    .line 215
    .local v2, "e":Ljava/lang/InstantiationException;
    sget-object v3, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    invoke-interface {p1, v3, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "logger":Lio/sentry/ILogger;
    .end local p2    # "configuration":Lio/sentry/Sentry$OptionsConfiguration;, "Lio/sentry/Sentry$OptionsConfiguration<Lio/sentry/android/core/SentryAndroidOptions;>;"
    throw v1

    .line 208
    .end local v2    # "e":Ljava/lang/InstantiationException;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "logger":Lio/sentry/ILogger;
    .restart local p2    # "configuration":Lio/sentry/Sentry$OptionsConfiguration;, "Lio/sentry/Sentry$OptionsConfiguration<Lio/sentry/android/core/SentryAndroidOptions;>;"
    :catch_3
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-object v3, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    invoke-interface {p1, v3, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "logger":Lio/sentry/ILogger;
    .end local p2    # "configuration":Lio/sentry/Sentry$OptionsConfiguration;, "Lio/sentry/Sentry$OptionsConfiguration<Lio/sentry/android/core/SentryAndroidOptions;>;"
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 227
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "logger":Lio/sentry/ILogger;
    .restart local p2    # "configuration":Lio/sentry/Sentry$OptionsConfiguration;, "Lio/sentry/Sentry$OptionsConfiguration<Lio/sentry/android/core/SentryAndroidOptions;>;"
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 228
    throw v0
.end method

.method public static init(Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/sentry/Sentry$OptionsConfiguration<",
            "Lio/sentry/android/core/SentryAndroidOptions;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p1, "configuration":Lio/sentry/Sentry$OptionsConfiguration;, "Lio/sentry/Sentry$OptionsConfiguration<Lio/sentry/android/core/SentryAndroidOptions;>;"
    new-instance v0, Lio/sentry/android/core/AndroidLogger;

    invoke-direct {v0}, Lio/sentry/android/core/AndroidLogger;-><init>()V

    invoke-static {p0, v0, p1}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/Sentry$OptionsConfiguration;)V

    .line 85
    return-void
.end method

.method static synthetic lambda$init$0(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0
    .param p0, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 72
    return-void
.end method

.method static synthetic lambda$init$1(Lio/sentry/ILogger;Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 17
    .param p0, "logger"    # Lio/sentry/ILogger;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configuration"    # Lio/sentry/Sentry$OptionsConfiguration;
    .param p3, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 106
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    new-instance v0, Lio/sentry/util/LoadClass;

    invoke-direct {v0}, Lio/sentry/util/LoadClass;-><init>()V

    move-object v11, v0

    .line 107
    .local v11, "classLoader":Lio/sentry/util/LoadClass;
    nop

    .line 108
    const-string v0, "timber.log.Timber"

    invoke-virtual {v11, v0, v2}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v12

    .line 109
    .local v12, "isTimberUpstreamAvailable":Z
    nop

    .line 110
    const-string v0, "androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks"

    invoke-virtual {v11, v0, v2}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v13

    .line 111
    .local v13, "isFragmentUpstreamAvailable":Z
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz v13, :cond_0

    .line 113
    const-string v4, "io.sentry.android.fragment.FragmentLifecycleIntegration"

    invoke-virtual {v11, v4, v2}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v3

    .line 115
    .local v7, "isFragmentAvailable":Z
    :goto_0
    if-eqz v12, :cond_1

    .line 117
    const-string v4, "io.sentry.android.timber.SentryTimberIntegration"

    invoke-virtual {v11, v4, v2}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v8, v0

    goto :goto_1

    :cond_1
    move v8, v3

    .line 118
    .local v8, "isTimberAvailable":Z
    :goto_1
    nop

    .line 119
    const-string v0, "io.sentry.android.replay.ReplayIntegration"

    invoke-virtual {v11, v0, v2}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v9

    .line 120
    .local v9, "isReplayAvailable":Z
    nop

    .line 121
    const-string v0, "io.sentry.android.distribution.DistributionIntegration"

    invoke-virtual {v11, v0, v2}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v10

    .line 123
    .local v10, "isDistributionAvailable":Z
    new-instance v4, Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {v4, v1}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    .line 124
    .local v4, "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    new-instance v5, Lio/sentry/util/LoadClass;

    invoke-direct {v5}, Lio/sentry/util/LoadClass;-><init>()V

    .line 125
    .local v5, "loadClass":Lio/sentry/util/LoadClass;
    new-instance v6, Lio/sentry/android/core/ActivityFramesTracker;

    invoke-direct {v6, v5, v2}, Lio/sentry/android/core/ActivityFramesTracker;-><init>(Lio/sentry/util/LoadClass;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 128
    .local v6, "activityFramesTracker":Lio/sentry/android/core/ActivityFramesTracker;
    move-object/from16 v3, p1

    invoke-static {v2, v3, v1, v4}, Lio/sentry/android/core/AndroidOptionsInitializer;->loadDefaultAndMetadataOptions(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V

    .line 134
    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    invoke-static/range {v2 .. v10}, Lio/sentry/android/core/AndroidOptionsInitializer;->installDefaultIntegrations(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/util/LoadClass;Lio/sentry/android/core/ActivityFramesTracker;ZZZZ)V

    move/from16 v16, v8

    move v8, v7

    move v7, v9

    move/from16 v9, v16

    .line 146
    .local v7, "isReplayAvailable":Z
    .local v8, "isFragmentAvailable":Z
    .local v9, "isTimberAvailable":Z
    :try_start_0
    invoke-interface/range {p2 .. p3}, Lio/sentry/Sentry$OptionsConfiguration;->configure(Lio/sentry/SentryOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    goto :goto_2

    .line 147
    :catchall_0
    move-exception v0

    .line 149
    .local v0, "t":Ljava/lang/Throwable;
    nop

    .line 150
    invoke-virtual/range {p3 .. p3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 151
    const-string v14, "Error in the \'OptionsConfiguration.configure\' callback."

    invoke-interface {v2, v3, v14, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    .line 160
    .local v0, "appStartMetrics":Lio/sentry/android/core/performance/AppStartMetrics;
    invoke-virtual/range {p3 .. p3}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    invoke-virtual {v4}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v2

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2

    .line 162
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    .line 163
    .local v2, "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 167
    .end local v2    # "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_3

    .line 168
    nop

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    .line 168
    invoke-virtual {v0, v2}, Lio/sentry/android/core/performance/AppStartMetrics;->registerLifecycleCallbacks(Landroid/app/Application;)V

    .line 171
    :cond_3
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getSdkInitTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v14

    .line 172
    .local v14, "sdkInitTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    invoke-virtual {v14}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStarted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 173
    sget-wide v2, Lio/sentry/android/core/SentryAndroid;->sdkInitMillis:J

    invoke-virtual {v14, v2, v3}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 176
    :cond_4
    move-object/from16 v3, p1

    move-object/from16 v2, p3

    invoke-static/range {v2 .. v7}, Lio/sentry/android/core/AndroidOptionsInitializer;->initializeIntegrationsAndProcessors(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/util/LoadClass;Lio/sentry/android/core/ActivityFramesTracker;Z)V

    .line 184
    invoke-static {v2, v8, v9}, Lio/sentry/android/core/SentryAndroid;->deduplicateIntegrations(Lio/sentry/SentryOptions;ZZ)V

    .line 185
    return-void
.end method

.method static synthetic lambda$init$2(Ljava/util/concurrent/atomic/AtomicBoolean;Lio/sentry/IScope;)V
    .locals 2
    .param p0, "sessionStarted"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p1, "scope"    # Lio/sentry/IScope;

    .line 197
    invoke-interface {p1}, Lio/sentry/IScope;->getSession()Lio/sentry/Session;

    move-result-object v0

    .line 198
    .local v0, "currentSession":Lio/sentry/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/Session;->getStarted()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    :cond_0
    return-void
.end method
