.class final Lio/sentry/android/core/AndroidOptionsInitializer;
.super Ljava/lang/Object;
.source "AndroidOptionsInitializer.java"


# static fields
.field static final COMPOSE_CLASS_NAME:Ljava/lang/String; = "androidx.compose.ui.node.Owner"

.field static final DEFAULT_FLUSH_TIMEOUT_MS:J = 0xfa0L

.field static final SENTRY_COMPOSE_GESTURE_INTEGRATION_CLASS_NAME:Ljava/lang/String; = "io.sentry.compose.gestures.ComposeGestureTargetLocator"

.field static final SENTRY_COMPOSE_VIEW_HIERARCHY_INTEGRATION_CLASS_NAME:Ljava/lang/String; = "io.sentry.compose.viewhierarchy.ComposeViewHierarchyExporter"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 566
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "sentry"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getSentryReleaseVersion(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "versionCode"    # Ljava/lang/String;

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static initializeIntegrationsAndProcessors(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/util/LoadClass;Lio/sentry/android/core/ActivityFramesTracker;Z)V
    .locals 13
    .param p0, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p3, "loadClass"    # Lio/sentry/util/LoadClass;
    .param p4, "activityFramesTracker"    # Lio/sentry/android/core/ActivityFramesTracker;
    .param p5, "isReplayAvailable"    # Z

    .line 172
    move-object/from16 v7, p3

    move/from16 v8, p5

    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/transport/NoOpEnvelopeCache;

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;

    invoke-direct {v0, p0}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnvelopeDiskCache(Lio/sentry/cache/IEnvelopeCache;)V

    .line 177
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/NoOpConnectionStatusProvider;

    if-eqz v0, :cond_1

    .line 178
    new-instance v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    .line 180
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getMonotonicTicker()Lio/sentry/time/MonotonicTicker;

    move-result-object v1

    invoke-direct {v0, p1, p0, p2, v1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;-><init>(Landroid/content/Context;Lio/sentry/SentryOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/time/MonotonicTicker;)V

    .line 178
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setConnectionStatusProvider(Lio/sentry/IConnectionStatusProvider;)V

    .line 183
    :cond_1
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 184
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver;

    invoke-direct {v0, p0}, Lio/sentry/cache/PersistingScopeObserver;-><init>(Lio/sentry/SentryOptions;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addScopeObserver(Lio/sentry/IScopeObserver;)V

    .line 185
    new-instance v0, Lio/sentry/cache/PersistingOptionsObserver;

    invoke-direct {v0, p0}, Lio/sentry/cache/PersistingOptionsObserver;-><init>(Lio/sentry/SentryOptions;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addOptionsObserver(Lio/sentry/IOptionsObserver;)V

    .line 186
    invoke-static/range {p1 .. p2}, Lio/sentry/android/core/ContextUtils;->getPackageInfo(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 187
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_2

    iget-wide v1, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_2

    .line 188
    new-instance v1, Lio/sentry/android/core/PersistingOptionsCacheGenerationObserver;

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-direct {v1, p0, v4, v5}, Lio/sentry/android/core/PersistingOptionsCacheGenerationObserver;-><init>(Lio/sentry/SentryOptions;J)V

    invoke-virtual {p0, v1}, Lio/sentry/android/core/SentryAndroidOptions;->addOptionsObserver(Lio/sentry/IOptionsObserver;)V

    .line 193
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    new-instance v0, Lio/sentry/DeduplicateMultithreadedEventProcessor;

    invoke-direct {v0, p0}, Lio/sentry/DeduplicateMultithreadedEventProcessor;-><init>(Lio/sentry/SentryOptions;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addEventProcessor(Lio/sentry/EventProcessor;)V

    .line 194
    new-instance v0, Lio/sentry/android/core/DefaultAndroidEventProcessor;

    invoke-direct {v0, p1, p2, p0}, Lio/sentry/android/core/DefaultAndroidEventProcessor;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addEventProcessor(Lio/sentry/EventProcessor;)V

    .line 196
    new-instance v0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;

    move-object/from16 v9, p4

    invoke-direct {v0, p0, v9}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ActivityFramesTracker;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addEventProcessor(Lio/sentry/EventProcessor;)V

    .line 197
    new-instance v0, Lio/sentry/android/core/ScreenshotEventProcessor;

    invoke-direct {v0, p0, p2, v8}, Lio/sentry/android/core/ScreenshotEventProcessor;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Z)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addEventProcessor(Lio/sentry/EventProcessor;)V

    .line 199
    new-instance v0, Lio/sentry/android/core/ViewHierarchyEventProcessor;

    invoke-direct {v0, p0}, Lio/sentry/android/core/ViewHierarchyEventProcessor;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addEventProcessor(Lio/sentry/EventProcessor;)V

    .line 200
    new-instance v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    invoke-direct {v0, p1, p0, p2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addEventProcessor(Lio/sentry/EventProcessor;)V

    .line 202
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getTransportGate()Lio/sentry/transport/ITransportGate;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/transport/NoOpTransportGate;

    if-eqz v0, :cond_3

    .line 203
    new-instance v0, Lio/sentry/android/core/AndroidTransportGate;

    invoke-direct {v0, p0}, Lio/sentry/android/core/AndroidTransportGate;-><init>(Lio/sentry/SentryOptions;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setTransportGate(Lio/sentry/transport/ITransportGate;)V

    .line 208
    :cond_3
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x19

    if-gt v0, v1, :cond_4

    .line 209
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_4

    .line 210
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getDsn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/android/core/SentryRootCaSslSocketFactory;->isSentrySaasDsn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 211
    new-instance v0, Lio/sentry/android/core/SentryRootCaSslSocketFactory;

    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/android/core/SentryRootCaSslSocketFactory;-><init>(Lio/sentry/ILogger;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 214
    :cond_4
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v10

    .line 215
    .local v10, "appStartMetrics":Lio/sentry/android/core/performance/AppStartMetrics;
    invoke-virtual {v10}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartExtension()Lio/sentry/android/core/AppStartExtension;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setAppStartExtender(Lio/sentry/IAppStartExtender;)V

    .line 217
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getModulesLoader()Lio/sentry/internal/modules/IModulesLoader;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/internal/modules/NoOpModulesLoader;

    if-eqz v0, :cond_5

    .line 218
    new-instance v0, Lio/sentry/android/core/internal/modules/AssetsModulesLoader;

    invoke-direct {v0, p1, p0}, Lio/sentry/android/core/internal/modules/AssetsModulesLoader;-><init>(Landroid/content/Context;Lio/sentry/SentryOptions;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setModulesLoader(Lio/sentry/internal/modules/IModulesLoader;)V

    .line 220
    :cond_5
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getDebugMetaLoader()Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;

    if-eqz v0, :cond_6

    .line 221
    new-instance v0, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;

    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;-><init>(Landroid/content/Context;Lio/sentry/ILogger;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setDebugMetaLoader(Lio/sentry/internal/debugmeta/IDebugMetaLoader;)V

    .line 223
    :cond_6
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getVersionDetector()Lio/sentry/IVersionDetector;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/NoopVersionDetector;

    if-eqz v0, :cond_7

    .line 224
    new-instance v0, Lio/sentry/DefaultVersionDetector;

    invoke-direct {v0, p0}, Lio/sentry/DefaultVersionDetector;-><init>(Lio/sentry/SentryOptions;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setVersionDetector(Lio/sentry/IVersionDetector;)V

    .line 227
    :cond_7
    nop

    .line 228
    const-string v0, "androidx.core.view.ScrollingView"

    invoke-virtual {v7, v0, p0}, Lio/sentry/util/LoadClass;->isClassAvailableLazy(Ljava/lang/String;Lio/sentry/SentryOptions;)Lio/sentry/util/LazyEvaluator;

    move-result-object v11

    .line 229
    .local v11, "isAndroidXScrollViewAvailable":Lio/sentry/util/LazyEvaluator;, "Lio/sentry/util/LazyEvaluator<Ljava/lang/Boolean;>;"
    nop

    .line 230
    const-string v0, "androidx.compose.ui.node.Owner"

    invoke-virtual {v7, v0, p0}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v12

    .line 232
    .local v12, "isComposeUpstreamAvailable":Z
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getGestureTargetLocators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 234
    .local v0, "gestureTargetLocators":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/gestures/GestureTargetLocator;>;"
    new-instance v2, Lio/sentry/android/core/internal/gestures/AndroidViewGestureTargetLocator;

    invoke-direct {v2, v11}, Lio/sentry/android/core/internal/gestures/AndroidViewGestureTargetLocator;-><init>(Lio/sentry/util/LazyEvaluator;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    if-eqz v12, :cond_8

    .line 238
    const-string v2, "io.sentry.compose.gestures.ComposeGestureTargetLocator"

    invoke-virtual {v7, v2, p0}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v1

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    .line 241
    .local v2, "isComposeAvailable":Z
    :goto_0
    if-eqz v2, :cond_9

    .line 242
    new-instance v4, Lio/sentry/compose/gestures/ComposeGestureTargetLocator;

    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/sentry/compose/gestures/ComposeGestureTargetLocator;-><init>(Lio/sentry/ILogger;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_9
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setGestureTargetLocators(Ljava/util/List;)V

    .line 247
    .end local v0    # "gestureTargetLocators":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/gestures/GestureTargetLocator;>;"
    .end local v2    # "isComposeAvailable":Z
    :cond_a
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getViewHierarchyExporters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v12, :cond_b

    .line 249
    const-string v0, "io.sentry.compose.viewhierarchy.ComposeViewHierarchyExporter"

    invoke-virtual {v7, v0, p0}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    .local v0, "viewHierarchyExporters":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;>;"
    new-instance v1, Lio/sentry/compose/viewhierarchy/ComposeViewHierarchyExporter;

    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/sentry/compose/viewhierarchy/ComposeViewHierarchyExporter;-><init>(Lio/sentry/ILogger;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setViewHierarchyExporters(Ljava/util/List;)V

    .line 257
    .end local v0    # "viewHierarchyExporters":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;>;"
    :cond_b
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/util/thread/NoOpThreadChecker;

    if-eqz v0, :cond_c

    .line 258
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->getInstance()Lio/sentry/android/core/internal/util/AndroidThreadChecker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setThreadChecker(Lio/sentry/util/thread/IThreadChecker;)V

    .line 260
    :cond_c
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getSocketTagger()Lio/sentry/ISocketTagger;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/NoOpSocketTagger;

    if-eqz v0, :cond_d

    .line 261
    invoke-static {}, Lio/sentry/android/core/AndroidSocketTagger;->getInstance()Lio/sentry/android/core/AndroidSocketTagger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setSocketTagger(Lio/sentry/ISocketTagger;)V

    .line 264
    :cond_d
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getPerformanceCollectors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 265
    new-instance v0, Lio/sentry/android/core/AndroidMemoryCollector;

    invoke-direct {v0}, Lio/sentry/android/core/AndroidMemoryCollector;-><init>()V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addPerformanceCollector(Lio/sentry/IPerformanceCollector;)V

    .line 266
    new-instance v0, Lio/sentry/android/core/AndroidCpuCollector;

    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/android/core/AndroidCpuCollector;-><init>(Lio/sentry/ILogger;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addPerformanceCollector(Lio/sentry/IPerformanceCollector;)V

    .line 268
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 269
    new-instance v0, Lio/sentry/android/core/SpanFrameMetricsCollector;

    .line 273
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getFrameMetricsCollector()Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    move-result-object v1

    .line 272
    const-string v2, "options.getFrameMetricsCollector is required"

    invoke-static {v1, v2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    invoke-direct {v0, p0, v1}, Lio/sentry/android/core/SpanFrameMetricsCollector;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V

    .line 269
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addPerformanceCollector(Lio/sentry/IPerformanceCollector;)V

    .line 277
    :cond_e
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getCompositePerformanceCollector()Lio/sentry/CompositePerformanceCollector;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/NoOpCompositePerformanceCollector;

    if-eqz v0, :cond_f

    .line 278
    new-instance v0, Lio/sentry/DefaultCompositePerformanceCollector;

    invoke-direct {v0, p0}, Lio/sentry/DefaultCompositePerformanceCollector;-><init>(Lio/sentry/SentryOptions;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setCompositePerformanceCollector(Lio/sentry/CompositePerformanceCollector;)V

    .line 281
    :cond_f
    if-eqz v8, :cond_10

    .line 282
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/ReplayController;->getBreadcrumbConverter()Lio/sentry/ReplayBreadcrumbConverter;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/NoOpReplayBreadcrumbConverter;

    if-eqz v0, :cond_10

    .line 284
    nop

    .line 285
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v0

    new-instance v1, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;

    invoke-direct {v1, p0}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;-><init>(Lio/sentry/SentryOptions;)V

    .line 286
    invoke-interface {v0, v1}, Lio/sentry/ReplayController;->setBreadcrumbConverter(Lio/sentry/ReplayBreadcrumbConverter;)V

    .line 294
    :cond_10
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics;->staticLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    .line 295
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-virtual {v10}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartProfiler()Lio/sentry/ITransactionProfiler;

    move-result-object v4

    .line 296
    .local v4, "appStartTransactionProfiler":Lio/sentry/ITransactionProfiler;
    invoke-virtual {v10}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartContinuousProfiler()Lio/sentry/IContinuousProfiler;

    move-result-object v5

    .line 297
    .local v5, "appStartContinuousProfiler":Lio/sentry/IContinuousProfiler;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartProfiler(Lio/sentry/ITransactionProfiler;)V

    .line 298
    invoke-virtual {v10, v0}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartContinuousProfiler(Lio/sentry/IContinuousProfiler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    if-eqz v1, :cond_11

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 301
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_11
    nop

    .line 307
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getCompositePerformanceCollector()Lio/sentry/CompositePerformanceCollector;

    move-result-object v6

    .line 301
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lio/sentry/android/core/AndroidOptionsInitializer;->setupProfiler(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/ITransactionProfiler;Lio/sentry/IContinuousProfiler;Lio/sentry/CompositePerformanceCollector;)V

    .line 308
    return-void

    .line 294
    .end local v4    # "appStartTransactionProfiler":Lio/sentry/ITransactionProfiler;
    .end local v5    # "appStartContinuousProfiler":Lio/sentry/IContinuousProfiler;
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_12

    :try_start_1
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12
    :goto_1
    throw v2
.end method

.method static initializeIntegrationsAndProcessors(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/util/LoadClass;Lio/sentry/android/core/ActivityFramesTracker;Z)V
    .locals 6
    .param p0, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loadClass"    # Lio/sentry/util/LoadClass;
    .param p3, "activityFramesTracker"    # Lio/sentry/android/core/ActivityFramesTracker;
    .param p4, "isReplayAvailable"    # Z

    .line 155
    new-instance v2, Lio/sentry/android/core/BuildInfoProvider;

    new-instance v0, Lio/sentry/android/core/AndroidLogger;

    invoke-direct {v0}, Lio/sentry/android/core/AndroidLogger;-><init>()V

    invoke-direct {v2, v0}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .end local p0    # "options":Lio/sentry/android/core/SentryAndroidOptions;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "loadClass":Lio/sentry/util/LoadClass;
    .end local p3    # "activityFramesTracker":Lio/sentry/android/core/ActivityFramesTracker;
    .end local p4    # "isReplayAvailable":Z
    .local v0, "options":Lio/sentry/android/core/SentryAndroidOptions;
    .local v1, "context":Landroid/content/Context;
    .local v3, "loadClass":Lio/sentry/util/LoadClass;
    .local v4, "activityFramesTracker":Lio/sentry/android/core/ActivityFramesTracker;
    .local v5, "isReplayAvailable":Z
    invoke-static/range {v0 .. v5}, Lio/sentry/android/core/AndroidOptionsInitializer;->initializeIntegrationsAndProcessors(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/util/LoadClass;Lio/sentry/android/core/ActivityFramesTracker;Z)V

    .line 162
    return-void
.end method

.method static installDefaultIntegrations(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/util/LoadClass;Lio/sentry/android/core/ActivityFramesTracker;ZZZZ)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p3, "loadClass"    # Lio/sentry/util/LoadClass;
    .param p4, "activityFramesTracker"    # Lio/sentry/android/core/ActivityFramesTracker;
    .param p5, "isFragmentAvailable"    # Z
    .param p6, "isTimberAvailable"    # Z
    .param p7, "isReplayAvailable"    # Z
    .param p8, "isDistributionAvailable"    # Z

    .line 428
    new-instance v0, Lio/sentry/util/LazyEvaluator;

    new-instance v1, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda3;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-direct {v0, v1}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 431
    .local v0, "startupCrashMarkerEvaluator":Lio/sentry/util/LazyEvaluator;, "Lio/sentry/util/LazyEvaluator<Ljava/lang/Boolean;>;"
    new-instance v1, Lio/sentry/android/core/SendCachedEnvelopeIntegration;

    new-instance v2, Lio/sentry/SendFireAndForgetEnvelopeSender;

    new-instance v3, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1}, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda4;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-direct {v2, v3}, Lio/sentry/SendFireAndForgetEnvelopeSender;-><init>(Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetDirPath;)V

    invoke-direct {v1, v2, v0}, Lio/sentry/android/core/SendCachedEnvelopeIntegration;-><init>(Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;Lio/sentry/util/LazyEvaluator;)V

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 438
    const-string v1, "io.sentry.android.ndk.SentryNdk"

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lio/sentry/util/LoadClass;->loadClass(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Class;

    move-result-object v1

    .line 439
    .local v1, "sentryNdkClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Lio/sentry/android/core/NdkIntegration;

    invoke-direct {v2, v1}, Lio/sentry/android/core/NdkIntegration;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 441
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v2

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    .line 442
    new-instance v2, Lio/sentry/android/core/TombstoneIntegration;

    invoke-direct {v2, p0}, Lio/sentry/android/core/TombstoneIntegration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 445
    :cond_0
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v2

    const/16 v3, 0x25

    if-lt v2, v3, :cond_1

    .line 446
    new-instance v2, Lio/sentry/android/core/MemoryLimiterIntegration;

    invoke-direct {v2, p0, p2}, Lio/sentry/android/core/MemoryLimiterIntegration;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)V

    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 451
    :cond_1
    invoke-static {}, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->getOutboxFileObserver()Lio/sentry/android/core/EnvelopeFileObserverIntegration;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 456
    new-instance v2, Lio/sentry/android/core/SendCachedEnvelopeIntegration;

    new-instance v3, Lio/sentry/SendFireAndForgetOutboxSender;

    new-instance v4, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda5;

    invoke-direct {v4, p1}, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda5;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-direct {v3, v4}, Lio/sentry/SendFireAndForgetOutboxSender;-><init>(Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetDirPath;)V

    invoke-direct {v2, v3, v0}, Lio/sentry/android/core/SendCachedEnvelopeIntegration;-><init>(Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;Lio/sentry/util/LazyEvaluator;)V

    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 463
    new-instance v2, Lio/sentry/android/core/AppLifecycleIntegration;

    invoke-direct {v2}, Lio/sentry/android/core/AppLifecycleIntegration;-><init>()V

    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 466
    invoke-static {p0, p2}, Lio/sentry/android/core/AnrIntegrationFactory;->create(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Lio/sentry/Integration;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 468
    new-instance v2, Lio/sentry/android/core/anr/AnrProfilingIntegration;

    invoke-direct {v2}, Lio/sentry/android/core/anr/AnrProfilingIntegration;-><init>()V

    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 471
    instance-of v2, p0, Landroid/app/Application;

    if-eqz v2, :cond_2

    .line 472
    new-instance v2, Lio/sentry/android/core/ActivityLifecycleIntegration;

    move-object v3, p0

    check-cast v3, Landroid/app/Application;

    invoke-direct {v2, v3, p2, p4}, Lio/sentry/android/core/ActivityLifecycleIntegration;-><init>(Landroid/app/Application;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/ActivityFramesTracker;)V

    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 475
    new-instance v2, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;

    move-object v3, p0

    check-cast v3, Landroid/app/Application;

    invoke-direct {v2, v3}, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;-><init>(Landroid/app/Application;)V

    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 476
    new-instance v2, Lio/sentry/android/core/UserInteractionIntegration;

    move-object v3, p0

    check-cast v3, Landroid/app/Application;

    invoke-direct {v2, v3, p3}, Lio/sentry/android/core/UserInteractionIntegration;-><init>(Landroid/app/Application;Lio/sentry/util/LoadClass;)V

    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 477
    new-instance v2, Lio/sentry/android/core/FeedbackShakeIntegration;

    move-object v3, p0

    check-cast v3, Landroid/app/Application;

    invoke-direct {v2, v3}, Lio/sentry/android/core/FeedbackShakeIntegration;-><init>(Landroid/app/Application;)V

    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 478
    if-eqz p5, :cond_3

    .line 479
    new-instance v2, Lio/sentry/android/fragment/FragmentLifecycleIntegration;

    move-object v3, p0

    check-cast v3, Landroid/app/Application;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Lio/sentry/android/fragment/FragmentLifecycleIntegration;-><init>(Landroid/app/Application;ZZ)V

    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    goto :goto_0

    .line 482
    :cond_2
    nop

    .line 483
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 484
    const-string v5, "ActivityLifecycle, FragmentLifecycle and UserInteraction Integrations need an Application class to be installed."

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    :cond_3
    :goto_0
    if-eqz p6, :cond_4

    .line 490
    new-instance v2, Lio/sentry/android/timber/SentryTimberIntegration;

    invoke-direct {v2}, Lio/sentry/android/timber/SentryTimberIntegration;-><init>()V

    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 492
    :cond_4
    new-instance v2, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;

    invoke-direct {v2, p0}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 493
    new-instance v2, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;

    invoke-direct {v2, p0}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 494
    new-instance v2, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    invoke-direct {v2, p0, p2}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)V

    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 495
    if-eqz p7, :cond_5

    .line 496
    new-instance v2, Lio/sentry/android/replay/ReplayIntegration;

    .line 497
    invoke-static {}, Lio/sentry/transport/CurrentDateProvider;->getInstance()Lio/sentry/transport/ICurrentDateProvider;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lio/sentry/android/replay/ReplayIntegration;-><init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;)V

    .line 498
    .local v2, "replay":Lio/sentry/android/replay/ReplayIntegration;
    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 499
    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->setReplayController(Lio/sentry/ReplayController;)V

    .line 501
    .end local v2    # "replay":Lio/sentry/android/replay/ReplayIntegration;
    :cond_5
    if-eqz p8, :cond_6

    .line 502
    new-instance v2, Lio/sentry/android/distribution/DistributionIntegration;

    invoke-direct {v2, p0}, Lio/sentry/android/distribution/DistributionIntegration;-><init>(Landroid/content/Context;)V

    .line 503
    .local v2, "distribution":Lio/sentry/android/distribution/DistributionIntegration;
    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->setDistributionController(Lio/sentry/IDistributionApi;)V

    .line 504
    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 506
    .end local v2    # "distribution":Lio/sentry/android/distribution/DistributionIntegration;
    :cond_6
    nop

    .line 507
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    move-result-object v2

    new-instance v3, Lio/sentry/android/core/SentryAndroidOptions$AndroidUserFeedbackFormHandler;

    invoke-direct {v3}, Lio/sentry/android/core/SentryAndroidOptions$AndroidUserFeedbackFormHandler;-><init>()V

    .line 508
    invoke-virtual {v2, v3}, Lio/sentry/SentryFeedbackOptions;->setFormHandler(Lio/sentry/SentryFeedbackOptions$IFormHandler;)V

    .line 509
    return-void
.end method

.method static synthetic lambda$installDefaultIntegrations$3(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 429
    invoke-static {p0}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->hasStartupCrashMarker(Lio/sentry/SentryOptions;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$installDefaultIntegrations$4(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/String;
    .locals 1
    .param p0, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 433
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$installDefaultIntegrations$5(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/String;
    .locals 1
    .param p0, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 458
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setupProfiler$0(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/ISentryExecutorService;
    .locals 1
    .param p0, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 385
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setupProfiler$1(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/PerfettoProfiler;
    .locals 3
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 387
    new-instance v0, Lio/sentry/android/core/PerfettoProfiler;

    .line 388
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lio/sentry/android/core/PerfettoProfiler;-><init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/ISentryExecutorService;)V

    .line 387
    return-object v0
.end method

.method static synthetic lambda$setupProfiler$2(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/ISentryExecutorService;
    .locals 1
    .param p0, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 399
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    return-object v0
.end method

.method static loadDefaultAndMetadataOptions(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;)V
    .locals 2
    .param p0, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    new-instance v0, Lio/sentry/android/core/AndroidLogger;

    invoke-direct {v0}, Lio/sentry/android/core/AndroidLogger;-><init>()V

    .line 98
    .local v0, "logger":Lio/sentry/ILogger;
    new-instance v1, Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {v1, v0}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    invoke-static {p0, p1, v0, v1}, Lio/sentry/android/core/AndroidOptionsInitializer;->loadDefaultAndMetadataOptions(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V

    .line 99
    return-void
.end method

.method static loadDefaultAndMetadataOptions(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 3
    .param p0, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .param p3, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 114
    const-string v0, "The context is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 118
    .local v0, "finalContext":Landroid/content/Context;
    const-string v1, "The options object is required."

    invoke-static {p0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string v1, "The ILogger object is required."

    invoke-static {p2, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    invoke-virtual {p0, p2}, Lio/sentry/android/core/SentryAndroidOptions;->setLogger(Lio/sentry/ILogger;)V

    .line 123
    new-instance v1, Lio/sentry/android/core/AndroidFatalLogger;

    invoke-direct {v1}, Lio/sentry/android/core/AndroidFatalLogger;-><init>()V

    invoke-virtual {p0, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setFatalLogger(Lio/sentry/ILogger;)V

    .line 125
    sget-object v1, Lio/sentry/ScopeType;->CURRENT:Lio/sentry/ScopeType;

    invoke-virtual {p0, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setDefaultScopeType(Lio/sentry/ScopeType;)V

    .line 126
    sget-object v1, Lio/sentry/SentryOpenTelemetryMode;->OFF:Lio/sentry/SentryOpenTelemetryMode;

    invoke-virtual {p0, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setOpenTelemetryMode(Lio/sentry/SentryOpenTelemetryMode;)V

    .line 127
    new-instance v1, Lio/sentry/android/core/SentryAndroidDateProvider;

    invoke-direct {v1}, Lio/sentry/android/core/SentryAndroidDateProvider;-><init>()V

    invoke-virtual {p0, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setDateProvider(Lio/sentry/SentryDateProvider;)V

    .line 128
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogs()Lio/sentry/SentryOptions$Logs;

    move-result-object v1

    new-instance v2, Lio/sentry/android/core/AndroidLoggerBatchProcessorFactory;

    invoke-direct {v2}, Lio/sentry/android/core/AndroidLoggerBatchProcessorFactory;-><init>()V

    invoke-virtual {v1, v2}, Lio/sentry/SentryOptions$Logs;->setLoggerBatchProcessorFactory(Lio/sentry/logger/ILoggerBatchProcessorFactory;)V

    .line 129
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getMetrics()Lio/sentry/SentryOptions$Metrics;

    move-result-object v1

    new-instance v2, Lio/sentry/android/core/AndroidMetricsBatchProcessorFactory;

    invoke-direct {v2}, Lio/sentry/android/core/AndroidMetricsBatchProcessorFactory;-><init>()V

    invoke-virtual {v1, v2}, Lio/sentry/SentryOptions$Metrics;->setMetricsBatchProcessorFactory(Lio/sentry/metrics/IMetricsBatchProcessorFactory;)V

    .line 132
    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->setFlushTimeoutMillis(J)V

    .line 134
    new-instance v1, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    invoke-direct {v1, v0, p2, p3}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;-><init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V

    invoke-virtual {p0, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setFrameMetricsCollector(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V

    .line 137
    invoke-static {v0, p0, p3}, Lio/sentry/android/core/ManifestMetadataReader;->applyMetadata(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;)V

    .line 139
    invoke-static {v0}, Lio/sentry/android/core/AndroidOptionsInitializer;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setCacheDirPath(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->rotate()V

    .line 143
    invoke-static {p0, v0, p3}, Lio/sentry/android/core/AndroidOptionsInitializer;->readDefaultOptionValues(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)V

    .line 144
    invoke-static {}, Lio/sentry/android/core/AppState;->getInstance()Lio/sentry/android/core/AppState;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/sentry/android/core/AppState;->registerLifecycleObserver(Lio/sentry/SentryOptions;)V

    .line 145
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->activate()V

    .line 146
    return-void
.end method

.method private static readDefaultOptionValues(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 5
    .param p0, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 521
    nop

    .line 522
    invoke-static {p1, p2}, Lio/sentry/android/core/ContextUtils;->getPackageInfo(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 523
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1

    .line 525
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getRelease()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 526
    nop

    .line 528
    invoke-static {v0, p2}, Lio/sentry/android/core/ContextUtils;->getVersionCode(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-static {v0, v1}, Lio/sentry/android/core/AndroidOptionsInitializer;->getSentryReleaseVersion(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-virtual {p0, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setRelease(Ljava/lang/String;)V

    .line 532
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 533
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "android."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 534
    invoke-virtual {p0, v1}, Lio/sentry/android/core/SentryAndroidOptions;->addInAppInclude(Ljava/lang/String;)V

    .line 538
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getDistinctId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 540
    :try_start_0
    invoke-static {p1}, Lio/sentry/android/core/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setDistinctId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    goto :goto_0

    .line 541
    :catch_0
    move-exception v1

    .line 542
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Could not generate distinct Id."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 545
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    return-void
.end method

.method private static setupProfiler(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/ITransactionProfiler;Lio/sentry/IContinuousProfiler;Lio/sentry/CompositePerformanceCollector;)V
    .locals 10
    .param p0, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p3, "appStartTransactionProfiler"    # Lio/sentry/ITransactionProfiler;
    .param p4, "appStartContinuousProfiler"    # Lio/sentry/IContinuousProfiler;
    .param p5, "performanceCollector"    # Lio/sentry/CompositePerformanceCollector;

    .line 319
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->isProfilingEnabled()Z

    move-result v0

    const-string v1, "options.getFrameMetricsCollector is required"

    const/4 v2, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v4, p2

    goto/16 :goto_0

    .line 361
    :cond_0
    invoke-static {}, Lio/sentry/NoOpTransactionProfiler;->getInstance()Lio/sentry/NoOpTransactionProfiler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setTransactionProfiler(Lio/sentry/ITransactionProfiler;)V

    .line 364
    if-eqz p3, :cond_1

    .line 365
    invoke-interface {p3}, Lio/sentry/ITransactionProfiler;->close()V

    .line 367
    :cond_1
    if-eqz p4, :cond_3

    .line 368
    invoke-virtual {p0, p4}, Lio/sentry/android/core/SentryAndroidOptions;->setContinuousProfiler(Lio/sentry/IContinuousProfiler;)V

    .line 371
    invoke-interface {p4}, Lio/sentry/IContinuousProfiler;->getChunkId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    .line 372
    .local v0, "chunkId":Lio/sentry/protocol/SentryId;
    invoke-interface {p4}, Lio/sentry/IContinuousProfiler;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 373
    invoke-virtual {v0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1}, Lio/sentry/CompositePerformanceCollector;->start(Ljava/lang/String;)V

    .line 375
    .end local v0    # "chunkId":Lio/sentry/protocol/SentryId;
    :cond_2
    move-object v4, p2

    goto/16 :goto_1

    .line 376
    :cond_3
    nop

    .line 378
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getFrameMetricsCollector()Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    move-result-object v0

    .line 377
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 379
    .local v5, "frameMetricsCollector":Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x23

    if-lt v0, v1, :cond_4

    .line 380
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 381
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Lio/sentry/android/core/PerfettoContinuousProfiler;

    .line 383
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    new-instance v3, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    new-instance v4, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, p0}, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-direct {v1, v2, v5, v3, v4}, Lio/sentry/android/core/PerfettoContinuousProfiler;-><init>(Lio/sentry/ILogger;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/util/LazyEvaluator$Evaluator;Ljava/util/function/Supplier;)V

    .line 381
    invoke-virtual {p0, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setContinuousProfiler(Lio/sentry/IContinuousProfiler;)V

    .line 390
    const-string v1, "PerfettoContinuousProfiling"

    invoke-static {v1}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    .line 391
    .end local v0    # "appContext":Landroid/content/Context;
    move-object v4, p2

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableLegacyProfiling()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 392
    new-instance v3, Lio/sentry/android/core/AndroidContinuousProfiler;

    .line 396
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v6

    .line 397
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object v7

    .line 398
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getProfilingTracesHz()I

    move-result v8

    new-instance v9, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0}, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    move-object v4, p2

    .end local p2    # "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    .local v4, "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    invoke-direct/range {v3 .. v9}, Lio/sentry/android/core/AndroidContinuousProfiler;-><init>(Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;Ljava/lang/String;ILio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 392
    invoke-virtual {p0, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setContinuousProfiler(Lio/sentry/IContinuousProfiler;)V

    goto :goto_1

    .line 401
    .end local v4    # "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    .restart local p2    # "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    :cond_5
    move-object v4, p2

    .line 402
    .end local p2    # "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    .restart local v4    # "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v2, [Ljava/lang/Object;

    .line 403
    const-string v2, "enableLegacyProfiling is disabled and device is below API 35. No profiling data will be collected."

    invoke-interface {p2, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 319
    .end local v4    # "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    .end local v5    # "frameMetricsCollector":Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;
    .restart local p2    # "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    :cond_6
    move-object v4, p2

    .line 320
    .end local p2    # "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    .restart local v4    # "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    :goto_0
    invoke-static {}, Lio/sentry/NoOpContinuousProfiler;->getInstance()Lio/sentry/NoOpContinuousProfiler;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/sentry/android/core/SentryAndroidOptions;->setContinuousProfiler(Lio/sentry/IContinuousProfiler;)V

    .line 324
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableLegacyProfiling()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_9

    .line 325
    nop

    .line 326
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 327
    const-string v3, "Transaction-based profiling (profilesSampleRate/profilesSampler) is disabled because enableLegacyProfiling is false. Transaction-based profiling always uses the legacy profiler and is not supported by Perfetto. No profiling data will be collected. Use profileSessionSampleRate for continuous profiling instead."

    invoke-interface {p2, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    invoke-static {}, Lio/sentry/NoOpTransactionProfiler;->getInstance()Lio/sentry/NoOpTransactionProfiler;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/sentry/android/core/SentryAndroidOptions;->setTransactionProfiler(Lio/sentry/ITransactionProfiler;)V

    .line 335
    if-eqz p3, :cond_7

    .line 336
    invoke-interface {p3}, Lio/sentry/ITransactionProfiler;->close()V

    .line 338
    :cond_7
    if-eqz p4, :cond_8

    .line 339
    invoke-interface {p4, v0}, Lio/sentry/IContinuousProfiler;->close(Z)V

    .line 341
    :cond_8
    return-void

    .line 345
    :cond_9
    if-eqz p4, :cond_a

    .line 346
    invoke-interface {p4, v0}, Lio/sentry/IContinuousProfiler;->close(Z)V

    .line 348
    :cond_a
    if-eqz p3, :cond_b

    .line 349
    invoke-virtual {p0, p3}, Lio/sentry/android/core/SentryAndroidOptions;->setTransactionProfiler(Lio/sentry/ITransactionProfiler;)V

    goto :goto_1

    .line 351
    :cond_b
    new-instance p2, Lio/sentry/android/core/AndroidTransactionProfiler;

    .line 357
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getFrameMetricsCollector()Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    move-result-object v0

    .line 356
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    invoke-direct {p2, p1, p0, v4, v0}, Lio/sentry/android/core/AndroidTransactionProfiler;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V

    .line 351
    invoke-virtual {p0, p2}, Lio/sentry/android/core/SentryAndroidOptions;->setTransactionProfiler(Lio/sentry/ITransactionProfiler;)V

    .line 410
    :goto_1
    return-void
.end method
