.class public Lio/sentry/SentryOptions;
.super Ljava/lang/Object;
.source "SentryOptions.java"

# interfaces
.implements Lio/sentry/transport/RateLimiterConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryOptions$BeforeSendCallback;,
        Lio/sentry/SentryOptions$BeforeSendTransactionCallback;,
        Lio/sentry/SentryOptions$BeforeSendReplayCallback;,
        Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;,
        Lio/sentry/SentryOptions$OnDiscardCallback;,
        Lio/sentry/SentryOptions$Proxy;,
        Lio/sentry/SentryOptions$TracesSamplerCallback;,
        Lio/sentry/SentryOptions$OnOversizedEventCallback;,
        Lio/sentry/SentryOptions$RequestSize;,
        Lio/sentry/SentryOptions$ProfilesSamplerCallback;,
        Lio/sentry/SentryOptions$BeforeEnvelopeCallback;,
        Lio/sentry/SentryOptions$Cron;,
        Lio/sentry/SentryOptions$Logs;,
        Lio/sentry/SentryOptions$Metrics;,
        Lio/sentry/SentryOptions$DistributionOptions;
    }
.end annotation


# static fields
.field static final DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/SentryLevel;

.field private static final DEFAULT_ENVIRONMENT:Ljava/lang/String; = "production"

.field public static final DEFAULT_PROPAGATION_TARGETS:Ljava/lang/String; = ".*"

.field public static final MAX_EVENT_SIZE_BYTES:J = 0x100000L


# instance fields
.field private appStartExtender:Lio/sentry/IAppStartExtender;

.field private attachServerName:Z

.field private attachStacktrace:Z

.field private attachThreads:Z

.field private backpressureMonitor:Lio/sentry/backpressure/IBackpressureMonitor;

.field private beforeBreadcrumb:Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

.field private beforeEnvelopeCallback:Lio/sentry/SentryOptions$BeforeEnvelopeCallback;

.field private beforeSend:Lio/sentry/SentryOptions$BeforeSendCallback;

.field private beforeSendFeedback:Lio/sentry/SentryOptions$BeforeSendCallback;

.field private beforeSendReplay:Lio/sentry/SentryOptions$BeforeSendReplayCallback;

.field private beforeSendTransaction:Lio/sentry/SentryOptions$BeforeSendTransactionCallback;

.field private final bundleIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cacheDirPath:Ljava/lang/String;

.field private captureOpenTelemetryEvents:Z

.field clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

.field private compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

.field private connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

.field private connectionTimeoutMillis:I

.field private final contextTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private continuousProfiler:Lio/sentry/IContinuousProfiler;

.field private cron:Lio/sentry/SentryOptions$Cron;

.field private dataCollection:Lio/sentry/DataCollection;

.field private final dataCollectionResolver:Lio/sentry/DataCollectionResolver;

.field private final dateProvider:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Lio/sentry/SentryDateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private deadlineTimeout:J

.field private debug:Z

.field private debugMetaLoader:Lio/sentry/internal/debugmeta/IDebugMetaLoader;

.field private defaultScopeType:Lio/sentry/ScopeType;

.field private final defaultTracePropagationTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private diagnosticLevel:Lio/sentry/SentryLevel;

.field private dist:Ljava/lang/String;

.field private distinctId:Ljava/lang/String;

.field private distribution:Lio/sentry/SentryOptions$DistributionOptions;

.field private distributionController:Lio/sentry/IDistributionApi;

.field private dsn:Ljava/lang/String;

.field private dsnHash:Ljava/lang/String;

.field private enableAppStartProfiling:Z

.field private enableAutoSessionTracking:Z

.field private enableBackpressureHandling:Z

.field private enableCacheTracing:Z

.field private enableDatabaseTransactionTracing:Z

.field private enableDeduplication:Z

.field private enableEventSizeLimiting:Z

.field private enableExternalConfiguration:Z

.field private enableLegacyProfiling:Z

.field private enablePrettySerializationOutput:Z

.field private enableQueueTracing:Z

.field private enableScopePersistence:Z

.field private enableScreenTracking:Z

.field private enableShutdownHook:Z

.field private enableSpotlight:Z

.field private enableTimeToFullDisplayTracing:Z

.field private enableUncaughtExceptionHandler:Z

.field private enableUserInteractionBreadcrumbs:Z

.field private enableUserInteractionTracing:Z

.field private enabled:Z

.field private envelopeDiskCache:Lio/sentry/cache/IEnvelopeCache;

.field private final envelopeReader:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Lio/sentry/IEnvelopeReader;",
            ">;"
        }
    .end annotation
.end field

.field private environment:Ljava/lang/String;

.field private final eventProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Lio/sentry/ISentryExecutorService;

.field private final experimental:Lio/sentry/ExperimentalOptions;

.field private fatalLogger:Lio/sentry/ILogger;

.field private feedbackOptions:Lio/sentry/SentryFeedbackOptions;

.field private flushTimeoutMillis:J

.field private forceInit:Z

.field private fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

.field private final gestureTargetLocators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/internal/gestures/GestureTargetLocator;",
            ">;"
        }
    .end annotation
.end field

.field private globalHubMode:Ljava/lang/Boolean;

.field private final hostnameCache:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Lio/sentry/HostnameCache;",
            ">;"
        }
    .end annotation
.end field

.field private idleTimeout:Ljava/lang/Long;

.field private ignoredCheckIns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/FilterString;",
            ">;"
        }
    .end annotation
.end field

.field private ignoredErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/FilterString;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoredExceptionsForType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private ignoredSpanOrigins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/FilterString;",
            ">;"
        }
    .end annotation
.end field

.field private ignoredTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/FilterString;",
            ">;"
        }
    .end annotation
.end field

.field private final inAppExcludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inAppIncludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initPriority:Lio/sentry/InitPriority;

.field private instrumenter:Lio/sentry/Instrumenter;

.field private final integrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/Integration;",
            ">;"
        }
    .end annotation
.end field

.field private volatile internalTracesSampler:Lio/sentry/TracesSampler;

.field protected final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private logger:Lio/sentry/ILogger;

.field private logs:Lio/sentry/SentryOptions$Logs;

.field private maxAttachmentSize:J

.field private maxBreadcrumbs:I

.field private maxCacheItems:I

.field private maxDepth:I

.field private maxFeatureFlags:I

.field private maxQueueSize:I

.field private maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

.field private maxSpans:I

.field private maxTraceFileSize:J

.field private metrics:Lio/sentry/SentryOptions$Metrics;

.field private modulesLoader:Lio/sentry/internal/modules/IModulesLoader;

.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/IScopeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private onDiscard:Lio/sentry/SentryOptions$OnDiscardCallback;

.field private onOversizedEvent:Lio/sentry/SentryOptions$OnOversizedEventCallback;

.field private openTelemetryMode:Lio/sentry/SentryOpenTelemetryMode;

.field private final optionsObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/IOptionsObserver;",
            ">;"
        }
    .end annotation
.end field

.field private orgId:Ljava/lang/String;

.field private final parsedDsn:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Lio/sentry/Dsn;",
            ">;"
        }
    .end annotation
.end field

.field private final performanceCollectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/IPerformanceCollector;",
            ">;"
        }
    .end annotation
.end field

.field private printUncaughtStackTrace:Z

.field private profileLifecycle:Lio/sentry/ProfileLifecycle;

.field private profileSessionSampleRate:Ljava/lang/Double;

.field private profilerConverter:Lio/sentry/IProfileConverter;

.field private profilesSampleRate:Ljava/lang/Double;

.field private profilesSampler:Lio/sentry/SentryOptions$ProfilesSamplerCallback;

.field private profilingTracesDirPath:Ljava/lang/String;

.field private profilingTracesHz:I

.field private proguardUuid:Ljava/lang/String;

.field private propagateTraceparent:Z

.field private proxy:Lio/sentry/SentryOptions$Proxy;

.field private readTimeoutMillis:I

.field private release:Ljava/lang/String;

.field private replayController:Lio/sentry/ReplayController;

.field private sampleRate:Ljava/lang/Double;

.field private scopesStorageFactory:Lio/sentry/IScopesStorageFactory;

.field private sdkVersion:Lio/sentry/protocol/SdkVersion;

.field private sendClientReports:Z

.field private sendDefaultPii:Z

.field private sendModules:Z

.field private sentryClientName:Ljava/lang/String;

.field private final serializer:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Lio/sentry/ISerializer;",
            ">;"
        }
    .end annotation
.end field

.field private serverName:Ljava/lang/String;

.field private sessionFlushTimeoutMillis:J

.field private sessionReplay:Lio/sentry/SentryReplayOptions;

.field private sessionTrackingIntervalMillis:J

.field private shutdownTimeoutMillis:J

.field private socketTagger:Lio/sentry/ISocketTagger;

.field private spanFactory:Lio/sentry/ISpanFactory;

.field private spotlightConnectionUrl:Ljava/lang/String;

.field private final spotlightIntegrationLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private startProfilerOnAppStart:Z

.field private strictTraceContinuation:Z

.field private final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private threadChecker:Lio/sentry/util/thread/IThreadChecker;

.field private timerExecutorService:Lio/sentry/ISentryExecutorService;

.field private traceOptionsRequests:Z

.field private tracePropagationTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private traceSampling:Z

.field private tracesSampleRate:Ljava/lang/Double;

.field private tracesSampler:Lio/sentry/SentryOptions$TracesSamplerCallback;

.field private transactionProfiler:Lio/sentry/ITransactionProfiler;

.field private transportFactory:Lio/sentry/ITransportFactory;

.field private transportGate:Lio/sentry/transport/ITransportGate;

.field private versionDetector:Lio/sentry/IVersionDetector;

.field private final viewHierarchyExporters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    sput-object v0, Lio/sentry/SentryOptions;->DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/SentryLevel;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3626
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/sentry/SentryOptions;-><init>(Z)V

    .line 3627
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 7
    .param p1, "empty"    # Z

    .line 3634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryOptions;->eventProcessors:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredExceptionsForType:Ljava/util/Set;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredErrors:Ljava/util/List;

    .line 101
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lio/sentry/SentryOptions;->integrations:Ljava/util/List;

    .line 104
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lio/sentry/SentryOptions;->bundleIds:Ljava/util/Set;

    .line 113
    new-instance v1, Lio/sentry/util/LazyEvaluator;

    new-instance v2, Lio/sentry/SentryOptions$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lio/sentry/SentryOptions$$ExternalSyntheticLambda0;-><init>(Lio/sentry/SentryOptions;)V

    invoke-direct {v1, v2}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    iput-object v1, p0, Lio/sentry/SentryOptions;->parsedDsn:Lio/sentry/util/LazyEvaluator;

    .line 123
    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Lio/sentry/SentryOptions;->shutdownTimeoutMillis:J

    .line 130
    const-wide/16 v1, 0x3a98

    iput-wide v1, p0, Lio/sentry/SentryOptions;->flushTimeoutMillis:J

    .line 137
    iput-wide v1, p0, Lio/sentry/SentryOptions;->sessionFlushTimeoutMillis:J

    .line 146
    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    .line 148
    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/SentryOptions;->fatalLogger:Lio/sentry/ILogger;

    .line 151
    sget-object v1, Lio/sentry/SentryOptions;->DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/SentryLevel;

    iput-object v1, p0, Lio/sentry/SentryOptions;->diagnosticLevel:Lio/sentry/SentryLevel;

    .line 154
    new-instance v1, Lio/sentry/util/LazyEvaluator;

    new-instance v2, Lio/sentry/SentryOptions$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lio/sentry/SentryOptions$$ExternalSyntheticLambda1;-><init>(Lio/sentry/SentryOptions;)V

    invoke-direct {v1, v2}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    iput-object v1, p0, Lio/sentry/SentryOptions;->serializer:Lio/sentry/util/LazyEvaluator;

    .line 158
    new-instance v1, Lio/sentry/util/LazyEvaluator;

    new-instance v2, Lio/sentry/SentryOptions$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lio/sentry/SentryOptions$$ExternalSyntheticLambda2;-><init>(Lio/sentry/SentryOptions;)V

    invoke-direct {v1, v2}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    iput-object v1, p0, Lio/sentry/SentryOptions;->envelopeReader:Lio/sentry/util/LazyEvaluator;

    .line 162
    const/16 v1, 0x64

    iput v1, p0, Lio/sentry/SentryOptions;->maxDepth:I

    .line 206
    const/16 v2, 0x1e

    iput v2, p0, Lio/sentry/SentryOptions;->maxCacheItems:I

    .line 209
    iget v2, p0, Lio/sentry/SentryOptions;->maxCacheItems:I

    iput v2, p0, Lio/sentry/SentryOptions;->maxQueueSize:I

    .line 214
    iput v1, p0, Lio/sentry/SentryOptions;->maxBreadcrumbs:I

    .line 221
    iput v1, p0, Lio/sentry/SentryOptions;->maxFeatureFlags:I

    .line 266
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lio/sentry/SentryOptions;->inAppExcludes:Ljava/util/List;

    .line 272
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lio/sentry/SentryOptions;->inAppIncludes:Ljava/util/List;

    .line 278
    invoke-static {}, Lio/sentry/NoOpTransportFactory;->getInstance()Lio/sentry/NoOpTransportFactory;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/SentryOptions;->transportFactory:Lio/sentry/ITransportFactory;

    .line 284
    invoke-static {}, Lio/sentry/transport/NoOpTransportGate;->getInstance()Lio/sentry/transport/NoOpTransportGate;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/SentryOptions;->transportGate:Lio/sentry/transport/ITransportGate;

    .line 297
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/sentry/SentryOptions;->attachStacktrace:Z

    .line 300
    iput-boolean v1, p0, Lio/sentry/SentryOptions;->enableAutoSessionTracking:Z

    .line 306
    const-wide/16 v2, 0x7530

    iput-wide v2, p0, Lio/sentry/SentryOptions;->sessionTrackingIntervalMillis:J

    .line 315
    iput-boolean v1, p0, Lio/sentry/SentryOptions;->attachServerName:Z

    .line 318
    iput-boolean v1, p0, Lio/sentry/SentryOptions;->enableUncaughtExceptionHandler:Z

    .line 324
    const/4 v4, 0x0

    iput-boolean v4, p0, Lio/sentry/SentryOptions;->printUncaughtStackTrace:Z

    .line 327
    invoke-static {}, Lio/sentry/NoOpSentryExecutorService;->getInstance()Lio/sentry/ISentryExecutorService;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->executorService:Lio/sentry/ISentryExecutorService;

    .line 334
    nop

    .line 335
    invoke-static {}, Lio/sentry/NoOpSentryExecutorService;->getInstance()Lio/sentry/ISentryExecutorService;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->timerExecutorService:Lio/sentry/ISentryExecutorService;

    .line 341
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, p0, Lio/sentry/SentryOptions;->spotlightIntegrationLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 344
    const/16 v5, 0x7530

    iput v5, p0, Lio/sentry/SentryOptions;->connectionTimeoutMillis:I

    .line 347
    iput v5, p0, Lio/sentry/SentryOptions;->readTimeoutMillis:I

    .line 350
    invoke-static {}, Lio/sentry/transport/NoOpEnvelopeCache;->getInstance()Lio/sentry/transport/NoOpEnvelopeCache;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->envelopeDiskCache:Lio/sentry/cache/IEnvelopeCache;

    .line 356
    iput-boolean v4, p0, Lio/sentry/SentryOptions;->sendDefaultPii:Z

    .line 358
    new-instance v5, Lio/sentry/DataCollection;

    invoke-direct {v5}, Lio/sentry/DataCollection;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->dataCollection:Lio/sentry/DataCollection;

    .line 360
    new-instance v5, Lio/sentry/DataCollectionResolver;

    invoke-direct {v5, p0}, Lio/sentry/DataCollectionResolver;-><init>(Lio/sentry/SentryOptions;)V

    iput-object v5, p0, Lio/sentry/SentryOptions;->dataCollectionResolver:Lio/sentry/DataCollectionResolver;

    .line 367
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->observers:Ljava/util/List;

    .line 369
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->optionsObservers:Ljava/util/List;

    .line 378
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->tags:Ljava/util/Map;

    .line 381
    const-wide/32 v5, 0x1400000

    iput-wide v5, p0, Lio/sentry/SentryOptions;->maxAttachmentSize:J

    .line 388
    iput-boolean v1, p0, Lio/sentry/SentryOptions;->enableDeduplication:Z

    .line 394
    iput-boolean v4, p0, Lio/sentry/SentryOptions;->enableEventSizeLimiting:Z

    .line 403
    const/16 v5, 0x3e8

    iput v5, p0, Lio/sentry/SentryOptions;->maxSpans:I

    .line 406
    iput-boolean v1, p0, Lio/sentry/SentryOptions;->enableShutdownHook:Z

    .line 412
    sget-object v5, Lio/sentry/SentryOptions$RequestSize;->NONE:Lio/sentry/SentryOptions$RequestSize;

    iput-object v5, p0, Lio/sentry/SentryOptions;->maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

    .line 418
    iput-boolean v1, p0, Lio/sentry/SentryOptions;->traceSampling:Z

    .line 435
    const-wide/32 v5, 0x500000

    iput-wide v5, p0, Lio/sentry/SentryOptions;->maxTraceFileSize:J

    .line 438
    invoke-static {}, Lio/sentry/NoOpTransactionProfiler;->getInstance()Lio/sentry/NoOpTransactionProfiler;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->transactionProfiler:Lio/sentry/ITransactionProfiler;

    .line 441
    invoke-static {}, Lio/sentry/NoOpContinuousProfiler;->getInstance()Lio/sentry/NoOpContinuousProfiler;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->continuousProfiler:Lio/sentry/IContinuousProfiler;

    .line 444
    invoke-static {}, Lio/sentry/NoOpProfileConverter;->getInstance()Lio/sentry/NoOpProfileConverter;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->profilerConverter:Lio/sentry/IProfileConverter;

    .line 449
    iput-object v0, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    .line 451
    nop

    .line 452
    const-string v5, ".*"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->defaultTracePropagationTargets:Ljava/util/List;

    .line 455
    iput-boolean v4, p0, Lio/sentry/SentryOptions;->propagateTraceparent:Z

    .line 463
    iput-boolean v4, p0, Lio/sentry/SentryOptions;->strictTraceContinuation:Z

    .line 483
    const-wide/16 v5, 0xbb8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->idleTimeout:Ljava/lang/Long;

    .line 489
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->contextTags:Ljava/util/List;

    .line 492
    iput-boolean v1, p0, Lio/sentry/SentryOptions;->sendClientReports:Z

    .line 495
    new-instance v5, Lio/sentry/clientreport/ClientReportRecorder;

    invoke-direct {v5, p0}, Lio/sentry/clientreport/ClientReportRecorder;-><init>(Lio/sentry/SentryOptions;)V

    iput-object v5, p0, Lio/sentry/SentryOptions;->clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

    .line 498
    invoke-static {}, Lio/sentry/internal/modules/NoOpModulesLoader;->getInstance()Lio/sentry/internal/modules/NoOpModulesLoader;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->modulesLoader:Lio/sentry/internal/modules/IModulesLoader;

    .line 501
    invoke-static {}, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;->getInstance()Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->debugMetaLoader:Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    .line 504
    iput-boolean v4, p0, Lio/sentry/SentryOptions;->enableUserInteractionTracing:Z

    .line 507
    iput-boolean v1, p0, Lio/sentry/SentryOptions;->enableUserInteractionBreadcrumbs:Z

    .line 510
    sget-object v5, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    iput-object v5, p0, Lio/sentry/SentryOptions;->instrumenter:Lio/sentry/Instrumenter;

    .line 513
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->gestureTargetLocators:Ljava/util/List;

    .line 519
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->viewHierarchyExporters:Ljava/util/List;

    .line 521
    invoke-static {}, Lio/sentry/util/thread/NoOpThreadChecker;->getInstance()Lio/sentry/util/thread/NoOpThreadChecker;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->threadChecker:Lio/sentry/util/thread/IThreadChecker;

    .line 525
    iput-boolean v1, p0, Lio/sentry/SentryOptions;->traceOptionsRequests:Z

    .line 528
    iput-boolean v4, p0, Lio/sentry/SentryOptions;->enableDatabaseTransactionTracing:Z

    .line 531
    iput-boolean v4, p0, Lio/sentry/SentryOptions;->enableCacheTracing:Z

    .line 534
    iput-boolean v4, p0, Lio/sentry/SentryOptions;->enableQueueTracing:Z

    .line 537
    new-instance v5, Lio/sentry/util/LazyEvaluator;

    new-instance v6, Lio/sentry/SentryOptions$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lio/sentry/SentryOptions$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v5, v6}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    iput-object v5, p0, Lio/sentry/SentryOptions;->dateProvider:Lio/sentry/util/LazyEvaluator;

    .line 547
    new-instance v5, Lio/sentry/util/LazyEvaluator;

    new-instance v6, Lio/sentry/SentryOptions$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lio/sentry/SentryOptions$$ExternalSyntheticLambda4;-><init>(Lio/sentry/SentryOptions;)V

    invoke-direct {v5, v6}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    iput-object v5, p0, Lio/sentry/SentryOptions;->hostnameCache:Lio/sentry/util/LazyEvaluator;

    .line 551
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->performanceCollectors:Ljava/util/List;

    .line 554
    nop

    .line 555
    invoke-static {}, Lio/sentry/NoOpCompositePerformanceCollector;->getInstance()Lio/sentry/NoOpCompositePerformanceCollector;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

    .line 558
    iput-boolean v4, p0, Lio/sentry/SentryOptions;->enableTimeToFullDisplayTracing:Z

    .line 561
    nop

    .line 562
    invoke-static {}, Lio/sentry/FullyDisplayedReporter;->getInstance()Lio/sentry/FullyDisplayedReporter;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    .line 565
    invoke-static {}, Lio/sentry/NoOpAppStartExtender;->getInstance()Lio/sentry/NoOpAppStartExtender;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->appStartExtender:Lio/sentry/IAppStartExtender;

    .line 567
    new-instance v5, Lio/sentry/NoOpConnectionStatusProvider;

    invoke-direct {v5}, Lio/sentry/NoOpConnectionStatusProvider;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    .line 571
    iput-boolean v1, p0, Lio/sentry/SentryOptions;->enabled:Z

    .line 574
    iput-boolean v1, p0, Lio/sentry/SentryOptions;->enablePrettySerializationOutput:Z

    .line 577
    iput-boolean v1, p0, Lio/sentry/SentryOptions;->sendModules:Z

    .line 581
    iput-boolean v4, p0, Lio/sentry/SentryOptions;->enableSpotlight:Z

    .line 586
    iput-boolean v1, p0, Lio/sentry/SentryOptions;->enableScopePersistence:Z

    .line 589
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    .line 595
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredSpanOrigins:Ljava/util/List;

    .line 601
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredTransactions:Ljava/util/List;

    .line 603
    nop

    .line 604
    invoke-static {}, Lio/sentry/backpressure/NoOpBackpressureMonitor;->getInstance()Lio/sentry/backpressure/NoOpBackpressureMonitor;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->backpressureMonitor:Lio/sentry/backpressure/IBackpressureMonitor;

    .line 606
    iput-boolean v1, p0, Lio/sentry/SentryOptions;->enableBackpressureHandling:Z

    .line 612
    iput-boolean v4, p0, Lio/sentry/SentryOptions;->enableAppStartProfiling:Z

    .line 614
    invoke-static {}, Lio/sentry/NoOpSpanFactory;->getInstance()Lio/sentry/NoOpSpanFactory;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->spanFactory:Lio/sentry/ISpanFactory;

    .line 623
    const/16 v5, 0x65

    iput v5, p0, Lio/sentry/SentryOptions;->profilingTracesHz:I

    .line 625
    iput-object v0, p0, Lio/sentry/SentryOptions;->cron:Lio/sentry/SentryOptions$Cron;

    .line 629
    invoke-static {}, Lio/sentry/NoOpReplayController;->getInstance()Lio/sentry/NoOpReplayController;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->replayController:Lio/sentry/ReplayController;

    .line 631
    invoke-static {}, Lio/sentry/NoOpDistributionApi;->getInstance()Lio/sentry/NoOpDistributionApi;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->distributionController:Lio/sentry/IDistributionApi;

    .line 637
    iput-boolean v1, p0, Lio/sentry/SentryOptions;->enableScreenTracking:Z

    .line 639
    sget-object v5, Lio/sentry/ScopeType;->ISOLATION:Lio/sentry/ScopeType;

    iput-object v5, p0, Lio/sentry/SentryOptions;->defaultScopeType:Lio/sentry/ScopeType;

    .line 641
    sget-object v5, Lio/sentry/InitPriority;->MEDIUM:Lio/sentry/InitPriority;

    iput-object v5, p0, Lio/sentry/SentryOptions;->initPriority:Lio/sentry/InitPriority;

    .line 643
    iput-boolean v4, p0, Lio/sentry/SentryOptions;->forceInit:Z

    .line 646
    iput-object v0, p0, Lio/sentry/SentryOptions;->globalHubMode:Ljava/lang/Boolean;

    .line 648
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryOptions;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 650
    sget-object v0, Lio/sentry/SentryOpenTelemetryMode;->AUTO:Lio/sentry/SentryOpenTelemetryMode;

    iput-object v0, p0, Lio/sentry/SentryOptions;->openTelemetryMode:Lio/sentry/SentryOpenTelemetryMode;

    .line 656
    iput-boolean v4, p0, Lio/sentry/SentryOptions;->captureOpenTelemetryEvents:Z

    .line 658
    invoke-static {}, Lio/sentry/NoopVersionDetector;->getInstance()Lio/sentry/NoopVersionDetector;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryOptions;->versionDetector:Lio/sentry/IVersionDetector;

    .line 671
    sget-object v0, Lio/sentry/ProfileLifecycle;->MANUAL:Lio/sentry/ProfileLifecycle;

    iput-object v0, p0, Lio/sentry/SentryOptions;->profileLifecycle:Lio/sentry/ProfileLifecycle;

    .line 681
    iput-boolean v4, p0, Lio/sentry/SentryOptions;->startProfilerOnAppStart:Z

    .line 689
    iput-boolean v1, p0, Lio/sentry/SentryOptions;->enableLegacyProfiling:Z

    .line 699
    iput-wide v2, p0, Lio/sentry/SentryOptions;->deadlineTimeout:J

    .line 701
    new-instance v0, Lio/sentry/SentryOptions$Logs;

    invoke-direct {v0}, Lio/sentry/SentryOptions$Logs;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryOptions;->logs:Lio/sentry/SentryOptions$Logs;

    .line 703
    new-instance v0, Lio/sentry/SentryOptions$Metrics;

    invoke-direct {v0}, Lio/sentry/SentryOptions$Metrics;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryOptions;->metrics:Lio/sentry/SentryOptions$Metrics;

    .line 705
    invoke-static {}, Lio/sentry/NoOpSocketTagger;->getInstance()Lio/sentry/ISocketTagger;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryOptions;->socketTagger:Lio/sentry/ISocketTagger;

    .line 774
    new-instance v0, Lio/sentry/SentryOptions$DistributionOptions;

    invoke-direct {v0}, Lio/sentry/SentryOptions$DistributionOptions;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryOptions;->distribution:Lio/sentry/SentryOptions$DistributionOptions;

    .line 3635
    invoke-direct {p0}, Lio/sentry/SentryOptions;->createSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    .line 3636
    .local v0, "sdkVersion":Lio/sentry/protocol/SdkVersion;
    new-instance v1, Lio/sentry/ExperimentalOptions;

    invoke-direct {v1, p1, v0}, Lio/sentry/ExperimentalOptions;-><init>(ZLio/sentry/protocol/SdkVersion;)V

    iput-object v1, p0, Lio/sentry/SentryOptions;->experimental:Lio/sentry/ExperimentalOptions;

    .line 3637
    new-instance v1, Lio/sentry/SentryReplayOptions;

    invoke-direct {v1, p1, v0}, Lio/sentry/SentryReplayOptions;-><init>(ZLio/sentry/protocol/SdkVersion;)V

    iput-object v1, p0, Lio/sentry/SentryOptions;->sessionReplay:Lio/sentry/SentryReplayOptions;

    .line 3638
    new-instance v1, Lio/sentry/SentryFeedbackOptions;

    new-instance v2, Lio/sentry/SentryOptions$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lio/sentry/SentryOptions$$ExternalSyntheticLambda5;-><init>(Lio/sentry/SentryOptions;)V

    new-instance v3, Lio/sentry/SentryOptions$1;

    invoke-direct {v3, p0}, Lio/sentry/SentryOptions$1;-><init>(Lio/sentry/SentryOptions;)V

    new-instance v4, Lio/sentry/util/LoadClass;

    invoke-direct {v4}, Lio/sentry/util/LoadClass;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lio/sentry/SentryFeedbackOptions;-><init>(Lio/sentry/SentryFeedbackOptions$IFormHandler;Lio/sentry/SentryFeedbackOptions$IShakeController;Lio/sentry/util/LoadClass;)V

    iput-object v1, p0, Lio/sentry/SentryOptions;->feedbackOptions:Lio/sentry/SentryFeedbackOptions;

    .line 3660
    if-nez p1, :cond_1

    .line 3661
    new-instance v1, Lio/sentry/util/LoadClass;

    invoke-direct {v1}, Lio/sentry/util/LoadClass;-><init>()V

    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v2

    invoke-static {v1, v2}, Lio/sentry/SpanFactoryFactory;->create(Lio/sentry/util/LoadClass;Lio/sentry/ILogger;)Lio/sentry/ISpanFactory;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->setSpanFactory(Lio/sentry/ISpanFactory;)V

    .line 3665
    iget-object v1, p0, Lio/sentry/SentryOptions;->integrations:Ljava/util/List;

    new-instance v2, Lio/sentry/UncaughtExceptionHandlerIntegration;

    invoke-direct {v2}, Lio/sentry/UncaughtExceptionHandlerIntegration;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3667
    iget-object v1, p0, Lio/sentry/SentryOptions;->integrations:Ljava/util/List;

    new-instance v2, Lio/sentry/ShutdownHookIntegration;

    invoke-direct {v2}, Lio/sentry/ShutdownHookIntegration;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3669
    iget-object v1, p0, Lio/sentry/SentryOptions;->eventProcessors:Ljava/util/List;

    new-instance v2, Lio/sentry/MainEventProcessor;

    invoke-direct {v2, p0}, Lio/sentry/MainEventProcessor;-><init>(Lio/sentry/SentryOptions;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3670
    iget-object v1, p0, Lio/sentry/SentryOptions;->eventProcessors:Ljava/util/List;

    new-instance v2, Lio/sentry/DuplicateEventDetectionEventProcessor;

    invoke-direct {v2, p0}, Lio/sentry/DuplicateEventDetectionEventProcessor;-><init>(Lio/sentry/SentryOptions;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3672
    invoke-static {}, Lio/sentry/util/Platform;->isJvm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3673
    iget-object v1, p0, Lio/sentry/SentryOptions;->eventProcessors:Ljava/util/List;

    new-instance v2, Lio/sentry/SentryRuntimeEventProcessor;

    invoke-direct {v2}, Lio/sentry/SentryRuntimeEventProcessor;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3676
    :cond_0
    const-string v1, "sentry.java/8.61.1"

    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->setSentryClientName(Ljava/lang/String;)V

    .line 3677
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setSdkVersion(Lio/sentry/protocol/SdkVersion;)V

    .line 3678
    invoke-direct {p0}, Lio/sentry/SentryOptions;->addPackageInfo()V

    .line 3680
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lio/sentry/SentryOptions;)Lio/sentry/ILogger;
    .locals 1
    .param p0, "x0"    # Lio/sentry/SentryOptions;

    .line 65
    iget-object v0, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    return-object v0
.end method

.method private addPackageInfo()V
    .locals 3

    .line 3930
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v0

    .line 3931
    const-string v1, "maven:io.sentry:sentry"

    const-string v2, "8.61.1"

    invoke-virtual {v0, v1, v2}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 3932
    return-void
.end method

.method private createSdkVersion()Lio/sentry/protocol/SdkVersion;
    .locals 4

    .line 3921
    const-string v0, "8.61.1"

    .line 3922
    .local v0, "version":Ljava/lang/String;
    new-instance v1, Lio/sentry/protocol/SdkVersion;

    const-string v2, "sentry.java"

    const-string v3, "8.61.1"

    invoke-direct {v1, v2, v3}, Lio/sentry/protocol/SdkVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3924
    .local v1, "sdkVersion":Lio/sentry/protocol/SdkVersion;
    invoke-virtual {v1, v3}, Lio/sentry/protocol/SdkVersion;->setVersion(Ljava/lang/String;)V

    .line 3926
    return-object v1
.end method

.method public static empty()Lio/sentry/SentryOptions;
    .locals 2

    .line 3621
    new-instance v0, Lio/sentry/SentryOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/sentry/SentryOptions;-><init>(Z)V

    return-object v0
.end method

.method static synthetic lambda$new$3()Lio/sentry/SentryDateProvider;
    .locals 1

    .line 539
    new-instance v0, Lio/sentry/SentryAutoDateProvider;

    invoke-direct {v0}, Lio/sentry/SentryAutoDateProvider;-><init>()V

    return-object v0
.end method

.method private mergeDataCollection(Lio/sentry/DataCollection;)V
    .locals 2
    .param p1, "externalDataCollection"    # Lio/sentry/DataCollection;

    .line 3884
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getUserInfo()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3885
    iget-object v0, p0, Lio/sentry/SentryOptions;->dataCollection:Lio/sentry/DataCollection;

    invoke-virtual {p1}, Lio/sentry/DataCollection;->getUserInfo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/DataCollection;->setUserInfo(Ljava/lang/Boolean;)V

    .line 3887
    :cond_0
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getHttpBodies()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3888
    iget-object v0, p0, Lio/sentry/SentryOptions;->dataCollection:Lio/sentry/DataCollection;

    invoke-virtual {p1}, Lio/sentry/DataCollection;->getHttpBodies()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/DataCollection;->setHttpBodies(Ljava/util/Set;)V

    .line 3890
    :cond_1
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getCookies()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3891
    iget-object v0, p0, Lio/sentry/SentryOptions;->dataCollection:Lio/sentry/DataCollection;

    invoke-virtual {p1}, Lio/sentry/DataCollection;->getCookies()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/DataCollection;->setCookies(Lio/sentry/KeyValueCollectionBehavior;)V

    .line 3893
    :cond_2
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection$HttpHeaders;->getRequest()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3894
    iget-object v0, p0, Lio/sentry/SentryOptions;->dataCollection:Lio/sentry/DataCollection;

    .line 3895
    invoke-virtual {v0}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v0

    .line 3896
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/DataCollection$HttpHeaders;->getRequest()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/DataCollection$HttpHeaders;->setRequest(Lio/sentry/KeyValueCollectionBehavior;)V

    .line 3898
    :cond_3
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection$HttpHeaders;->getResponse()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3899
    iget-object v0, p0, Lio/sentry/SentryOptions;->dataCollection:Lio/sentry/DataCollection;

    .line 3900
    invoke-virtual {v0}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v0

    .line 3901
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/DataCollection$HttpHeaders;->getResponse()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/DataCollection$HttpHeaders;->setResponse(Lio/sentry/KeyValueCollectionBehavior;)V

    .line 3903
    :cond_4
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getUrlQueryParams()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3904
    iget-object v0, p0, Lio/sentry/SentryOptions;->dataCollection:Lio/sentry/DataCollection;

    invoke-virtual {p1}, Lio/sentry/DataCollection;->getUrlQueryParams()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/DataCollection;->setUrlQueryParams(Lio/sentry/KeyValueCollectionBehavior;)V

    .line 3906
    :cond_5
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection$Graphql;->getDocument()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3907
    iget-object v0, p0, Lio/sentry/SentryOptions;->dataCollection:Lio/sentry/DataCollection;

    invoke-virtual {v0}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/DataCollection$Graphql;->getDocument()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/DataCollection$Graphql;->setDocument(Ljava/lang/Boolean;)V

    .line 3909
    :cond_6
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection$Graphql;->getVariables()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3910
    iget-object v0, p0, Lio/sentry/SentryOptions;->dataCollection:Lio/sentry/DataCollection;

    invoke-virtual {v0}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/DataCollection$Graphql;->getVariables()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/DataCollection$Graphql;->setVariables(Ljava/lang/Boolean;)V

    .line 3912
    :cond_7
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getDatabaseQueryData()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3913
    iget-object v0, p0, Lio/sentry/SentryOptions;->dataCollection:Lio/sentry/DataCollection;

    invoke-virtual {p1}, Lio/sentry/DataCollection;->getDatabaseQueryData()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/DataCollection;->setDatabaseQueryData(Ljava/lang/Boolean;)V

    .line 3915
    :cond_8
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getFilePaths()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3916
    iget-object v0, p0, Lio/sentry/SentryOptions;->dataCollection:Lio/sentry/DataCollection;

    invoke-virtual {p1}, Lio/sentry/DataCollection;->getFilePaths()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/DataCollection;->setFilePaths(Ljava/lang/Boolean;)V

    .line 3918
    :cond_9
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 7

    .line 720
    iget-object v0, p0, Lio/sentry/SentryOptions;->executorService:Lio/sentry/ISentryExecutorService;

    instance-of v0, v0, Lio/sentry/NoOpSentryExecutorService;

    if-eqz v0, :cond_0

    .line 723
    new-instance v0, Lio/sentry/SentryExecutorService;

    invoke-direct {v0, p0}, Lio/sentry/SentryExecutorService;-><init>(Lio/sentry/SentryOptions;)V

    iput-object v0, p0, Lio/sentry/SentryOptions;->executorService:Lio/sentry/ISentryExecutorService;

    .line 726
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryOptions;->timerExecutorService:Lio/sentry/ISentryExecutorService;

    instance-of v0, v0, Lio/sentry/NoOpSentryExecutorService;

    if-eqz v0, :cond_1

    .line 730
    new-instance v1, Lio/sentry/SentryExecutorService;

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lio/sentry/SentryExecutorService;-><init>(Lio/sentry/SentryOptions;ZJLjava/util/concurrent/TimeUnit;)V

    iput-object v1, v2, Lio/sentry/SentryOptions;->timerExecutorService:Lio/sentry/ISentryExecutorService;

    goto :goto_0

    .line 726
    :cond_1
    move-object v2, p0

    .line 738
    :goto_0
    iget-object v0, v2, Lio/sentry/SentryOptions;->spotlightIntegrationLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    :try_start_0
    const-string v0, "io.sentry.spotlight.SpotlightIntegration"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 741
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, v2, Lio/sentry/SentryOptions;->integrations:Ljava/util/List;

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/Integration;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    nop

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 742
    :catchall_0
    move-exception v0

    .line 746
    :cond_2
    :goto_1
    return-void
.end method

.method public addBundleId(Ljava/lang/String;)V
    .locals 2
    .param p1, "bundleId"    # Ljava/lang/String;

    .line 2543
    if-eqz p1, :cond_0

    .line 2544
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2545
    .local v0, "trimmedBundleId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2546
    iget-object v1, p0, Lio/sentry/SentryOptions;->bundleIds:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2549
    .end local v0    # "trimmedBundleId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public addContextTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "contextTag"    # Ljava/lang/String;

    .line 2575
    iget-object v0, p0, Lio/sentry/SentryOptions;->contextTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2576
    return-void
.end method

.method public addEventProcessor(Lio/sentry/EventProcessor;)V
    .locals 1
    .param p1, "eventProcessor"    # Lio/sentry/EventProcessor;

    .line 782
    iget-object v0, p0, Lio/sentry/SentryOptions;->eventProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    return-void
.end method

.method public addIgnoredCheckIn(Ljava/lang/String;)V
    .locals 2
    .param p1, "ignoredCheckIn"    # Ljava/lang/String;

    .line 3041
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    .line 3044
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    new-instance v1, Lio/sentry/FilterString;

    invoke-direct {v1, p1}, Lio/sentry/FilterString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3045
    return-void
.end method

.method public addIgnoredError(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 2075
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredErrors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2076
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredErrors:Ljava/util/List;

    .line 2078
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredErrors:Ljava/util/List;

    new-instance v1, Lio/sentry/FilterString;

    invoke-direct {v1, p1}, Lio/sentry/FilterString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2079
    return-void
.end method

.method public addIgnoredExceptionForType(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 2019
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredExceptionsForType:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2020
    return-void
.end method

.method public addIgnoredSpanOrigin(Ljava/lang/String;)V
    .locals 2
    .param p1, "ignoredSpanOrigin"    # Ljava/lang/String;

    .line 2995
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredSpanOrigins:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2996
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredSpanOrigins:Ljava/util/List;

    .line 2998
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredSpanOrigins:Ljava/util/List;

    new-instance v1, Lio/sentry/FilterString;

    invoke-direct {v1, p1}, Lio/sentry/FilterString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2999
    return-void
.end method

.method public addIgnoredTransaction(Ljava/lang/String;)V
    .locals 2
    .param p1, "ignoredTransaction"    # Ljava/lang/String;

    .line 3086
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredTransactions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredTransactions:Ljava/util/List;

    .line 3089
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredTransactions:Ljava/util/List;

    new-instance v1, Lio/sentry/FilterString;

    invoke-direct {v1, p1}, Lio/sentry/FilterString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3090
    return-void
.end method

.method public addInAppExclude(Ljava/lang/String;)V
    .locals 1
    .param p1, "exclude"    # Ljava/lang/String;

    .line 1347
    iget-object v0, p0, Lio/sentry/SentryOptions;->inAppExcludes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1348
    return-void
.end method

.method public addInAppInclude(Ljava/lang/String;)V
    .locals 1
    .param p1, "include"    # Ljava/lang/String;

    .line 1365
    iget-object v0, p0, Lio/sentry/SentryOptions;->inAppIncludes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1366
    return-void
.end method

.method public addIntegration(Lio/sentry/Integration;)V
    .locals 1
    .param p1, "integration"    # Lio/sentry/Integration;

    .line 800
    iget-object v0, p0, Lio/sentry/SentryOptions;->integrations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    return-void
.end method

.method public addOptionsObserver(Lio/sentry/IOptionsObserver;)V
    .locals 1
    .param p1, "observer"    # Lio/sentry/IOptionsObserver;

    .line 1858
    iget-object v0, p0, Lio/sentry/SentryOptions;->optionsObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1859
    return-void
.end method

.method public addPerformanceCollector(Lio/sentry/IPerformanceCollector;)V
    .locals 1
    .param p1, "collector"    # Lio/sentry/IPerformanceCollector;

    .line 3169
    iget-object v0, p0, Lio/sentry/SentryOptions;->performanceCollectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3170
    return-void
.end method

.method public addScopeObserver(Lio/sentry/IScopeObserver;)V
    .locals 1
    .param p1, "observer"    # Lio/sentry/IScopeObserver;

    .line 1828
    iget-object v0, p0, Lio/sentry/SentryOptions;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1829
    return-void
.end method

.method containsIgnoredExceptionForType(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 2029
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredExceptionsForType:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public findPersistingScopeObserver()Lio/sentry/cache/PersistingScopeObserver;
    .locals 3

    .line 1844
    iget-object v0, p0, Lio/sentry/SentryOptions;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 1845
    .local v1, "observer":Lio/sentry/IScopeObserver;
    instance-of v2, v1, Lio/sentry/cache/PersistingScopeObserver;

    if-eqz v2, :cond_0

    .line 1846
    move-object v0, v1

    check-cast v0, Lio/sentry/cache/PersistingScopeObserver;

    return-object v0

    .line 1848
    .end local v1    # "observer":Lio/sentry/IScopeObserver;
    :cond_0
    goto :goto_0

    .line 1849
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppStartExtender()Lio/sentry/IAppStartExtender;
    .locals 1

    .line 2818
    iget-object v0, p0, Lio/sentry/SentryOptions;->appStartExtender:Lio/sentry/IAppStartExtender;

    return-object v0
.end method

.method public getBackpressureMonitor()Lio/sentry/backpressure/IBackpressureMonitor;
    .locals 1

    .line 3195
    iget-object v0, p0, Lio/sentry/SentryOptions;->backpressureMonitor:Lio/sentry/backpressure/IBackpressureMonitor;

    return-object v0
.end method

.method public getBeforeBreadcrumb()Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;
    .locals 1

    .line 1081
    iget-object v0, p0, Lio/sentry/SentryOptions;->beforeBreadcrumb:Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

    return-object v0
.end method

.method public getBeforeEnvelopeCallback()Lio/sentry/SentryOptions$BeforeEnvelopeCallback;
    .locals 1

    .line 3253
    iget-object v0, p0, Lio/sentry/SentryOptions;->beforeEnvelopeCallback:Lio/sentry/SentryOptions$BeforeEnvelopeCallback;

    return-object v0
.end method

.method public getBeforeSend()Lio/sentry/SentryOptions$BeforeSendCallback;
    .locals 1

    .line 1008
    iget-object v0, p0, Lio/sentry/SentryOptions;->beforeSend:Lio/sentry/SentryOptions$BeforeSendCallback;

    return-object v0
.end method

.method public getBeforeSendFeedback()Lio/sentry/SentryOptions$BeforeSendCallback;
    .locals 1

    .line 1045
    iget-object v0, p0, Lio/sentry/SentryOptions;->beforeSendFeedback:Lio/sentry/SentryOptions$BeforeSendCallback;

    return-object v0
.end method

.method public getBeforeSendReplay()Lio/sentry/SentryOptions$BeforeSendReplayCallback;
    .locals 1

    .line 1063
    iget-object v0, p0, Lio/sentry/SentryOptions;->beforeSendReplay:Lio/sentry/SentryOptions$BeforeSendReplayCallback;

    return-object v0
.end method

.method public getBeforeSendTransaction()Lio/sentry/SentryOptions$BeforeSendTransactionCallback;
    .locals 1

    .line 1026
    iget-object v0, p0, Lio/sentry/SentryOptions;->beforeSendTransaction:Lio/sentry/SentryOptions$BeforeSendTransactionCallback;

    return-object v0
.end method

.method public getBundleIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2557
    iget-object v0, p0, Lio/sentry/SentryOptions;->bundleIds:Ljava/util/Set;

    return-object v0
.end method

.method public getCacheDirPath()Ljava/lang/String;
    .locals 3

    .line 1117
    iget-object v0, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1121
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryOptions;->dsnHash:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/SentryOptions;->dsnHash:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 1118
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getCacheDirPathWithoutDsn()Ljava/lang/String;
    .locals 1

    .line 1131
    iget-object v0, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1135
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    return-object v0

    .line 1132
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;
    .locals 1

    .line 2670
    iget-object v0, p0, Lio/sentry/SentryOptions;->clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

    return-object v0
.end method

.method public getCompositePerformanceCollector()Lio/sentry/CompositePerformanceCollector;
    .locals 1

    .line 2762
    iget-object v0, p0, Lio/sentry/SentryOptions;->compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

    return-object v0
.end method

.method public getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;
    .locals 1

    .line 3184
    iget-object v0, p0, Lio/sentry/SentryOptions;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    return-object v0
.end method

.method public getConnectionTimeoutMillis()I
    .locals 1

    .line 1658
    iget v0, p0, Lio/sentry/SentryOptions;->connectionTimeoutMillis:I

    return v0
.end method

.method public getContextTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2566
    iget-object v0, p0, Lio/sentry/SentryOptions;->contextTags:Ljava/util/List;

    return-object v0
.end method

.method public getContinuousProfiler()Lio/sentry/IContinuousProfiler;
    .locals 1

    .line 2219
    iget-object v0, p0, Lio/sentry/SentryOptions;->continuousProfiler:Lio/sentry/IContinuousProfiler;

    return-object v0
.end method

.method public getCron()Lio/sentry/SentryOptions$Cron;
    .locals 1

    .line 3292
    iget-object v0, p0, Lio/sentry/SentryOptions;->cron:Lio/sentry/SentryOptions$Cron;

    return-object v0
.end method

.method public getDataCollection()Lio/sentry/DataCollection;
    .locals 1

    .line 1800
    iget-object v0, p0, Lio/sentry/SentryOptions;->dataCollection:Lio/sentry/DataCollection;

    return-object v0
.end method

.method public getDataCollectionResolver()Lio/sentry/DataCollectionResolver;
    .locals 1

    .line 1819
    iget-object v0, p0, Lio/sentry/SentryOptions;->dataCollectionResolver:Lio/sentry/DataCollectionResolver;

    return-object v0
.end method

.method public getDateProvider()Lio/sentry/SentryDateProvider;
    .locals 1

    .line 3117
    iget-object v0, p0, Lio/sentry/SentryOptions;->dateProvider:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryDateProvider;

    return-object v0
.end method

.method public getDeadlineTimeout()J
    .locals 2

    .line 2394
    iget-wide v0, p0, Lio/sentry/SentryOptions;->deadlineTimeout:J

    return-wide v0
.end method

.method public getDebugMetaLoader()Lio/sentry/internal/debugmeta/IDebugMetaLoader;
    .locals 1

    .line 2696
    iget-object v0, p0, Lio/sentry/SentryOptions;->debugMetaLoader:Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    return-object v0
.end method

.method public getDefaultScopeType()Lio/sentry/ScopeType;
    .locals 1

    .line 3340
    iget-object v0, p0, Lio/sentry/SentryOptions;->defaultScopeType:Lio/sentry/ScopeType;

    return-object v0
.end method

.method public getDiagnosticLevel()Lio/sentry/SentryLevel;
    .locals 1

    .line 909
    iget-object v0, p0, Lio/sentry/SentryOptions;->diagnosticLevel:Lio/sentry/SentryLevel;

    return-object v0
.end method

.method public getDist()Ljava/lang/String;
    .locals 1

    .line 1393
    iget-object v0, p0, Lio/sentry/SentryOptions;->dist:Ljava/lang/String;

    return-object v0
.end method

.method public getDistinctId()Ljava/lang/String;
    .locals 1

    .line 1537
    iget-object v0, p0, Lio/sentry/SentryOptions;->distinctId:Ljava/lang/String;

    return-object v0
.end method

.method public getDistribution()Lio/sentry/SentryOptions$DistributionOptions;
    .locals 1

    .line 4280
    iget-object v0, p0, Lio/sentry/SentryOptions;->distribution:Lio/sentry/SentryOptions$DistributionOptions;

    return-object v0
.end method

.method public getDistributionController()Lio/sentry/IDistributionApi;
    .locals 1

    .line 3316
    iget-object v0, p0, Lio/sentry/SentryOptions;->distributionController:Lio/sentry/IDistributionApi;

    return-object v0
.end method

.method public getDsn()Ljava/lang/String;
    .locals 1

    .line 818
    iget-object v0, p0, Lio/sentry/SentryOptions;->dsn:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectiveOrgId()Ljava/lang/String;
    .locals 2

    .line 2503
    iget-object v0, p0, Lio/sentry/SentryOptions;->orgId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2504
    iget-object v0, p0, Lio/sentry/SentryOptions;->orgId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2505
    .local v0, "trimmed":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2506
    return-object v0

    .line 2510
    .end local v0    # "trimmed":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->retrieveParsedDsn()Lio/sentry/Dsn;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Dsn;->getOrgId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2511
    .local v0, "dsnOrgId":Ljava/lang/String;
    return-object v0

    .line 2512
    .end local v0    # "dsnOrgId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 2513
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;
    .locals 1

    .line 1694
    iget-object v0, p0, Lio/sentry/SentryOptions;->envelopeDiskCache:Lio/sentry/cache/IEnvelopeCache;

    return-object v0
.end method

.method public getEnvelopeReader()Lio/sentry/IEnvelopeReader;
    .locals 1

    .line 958
    iget-object v0, p0, Lio/sentry/SentryOptions;->envelopeReader:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IEnvelopeReader;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 1224
    iget-object v0, p0, Lio/sentry/SentryOptions;->environment:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/SentryOptions;->environment:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "production"

    :goto_0
    return-object v0
.end method

.method public getEpochClock()Lio/sentry/time/EpochClock;
    .locals 1

    .line 3141
    invoke-static {}, Lio/sentry/time/SystemEpochClock;->getInstance()Lio/sentry/time/EpochClock;

    move-result-object v0

    return-object v0
.end method

.method public getEventProcessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;"
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lio/sentry/SentryOptions;->eventProcessors:Ljava/util/List;

    return-object v0
.end method

.method public getExecutorService()Lio/sentry/ISentryExecutorService;
    .locals 1

    .line 1611
    iget-object v0, p0, Lio/sentry/SentryOptions;->executorService:Lio/sentry/ISentryExecutorService;

    return-object v0
.end method

.method public getExperimental()Lio/sentry/ExperimentalOptions;
    .locals 1

    .line 3302
    iget-object v0, p0, Lio/sentry/SentryOptions;->experimental:Lio/sentry/ExperimentalOptions;

    return-object v0
.end method

.method public getFatalLogger()Lio/sentry/ILogger;
    .locals 1

    .line 890
    iget-object v0, p0, Lio/sentry/SentryOptions;->fatalLogger:Lio/sentry/ILogger;

    return-object v0
.end method

.method public getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;
    .locals 1

    .line 3420
    iget-object v0, p0, Lio/sentry/SentryOptions;->feedbackOptions:Lio/sentry/SentryFeedbackOptions;

    return-object v0
.end method

.method public getFlushTimeoutMillis()J
    .locals 2

    .line 1555
    iget-wide v0, p0, Lio/sentry/SentryOptions;->flushTimeoutMillis:J

    return-wide v0
.end method

.method public getFullyDisplayedReporter()Lio/sentry/FullyDisplayedReporter;
    .locals 1

    .line 2801
    iget-object v0, p0, Lio/sentry/SentryOptions;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    return-object v0
.end method

.method public getGestureTargetLocators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/internal/gestures/GestureTargetLocator;",
            ">;"
        }
    .end annotation

    .line 2712
    iget-object v0, p0, Lio/sentry/SentryOptions;->gestureTargetLocators:Ljava/util/List;

    return-object v0
.end method

.method public getHostnameCache()Lio/sentry/HostnameCache;
    .locals 1

    .line 3159
    iget-object v0, p0, Lio/sentry/SentryOptions;->hostnameCache:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/HostnameCache;

    return-object v0
.end method

.method public getIdleTimeout()Ljava/lang/Long;
    .locals 1

    .line 2584
    iget-object v0, p0, Lio/sentry/SentryOptions;->idleTimeout:Ljava/lang/Long;

    return-object v0
.end method

.method public getIgnoredCheckIns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/FilterString;",
            ">;"
        }
    .end annotation

    .line 3030
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    return-object v0
.end method

.method public getIgnoredErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/FilterString;",
            ">;"
        }
    .end annotation

    .line 2042
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredErrors:Ljava/util/List;

    return-object v0
.end method

.method public getIgnoredExceptionsForType()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation

    .line 2010
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredExceptionsForType:Ljava/util/Set;

    return-object v0
.end method

.method public getIgnoredSpanOrigins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/FilterString;",
            ">;"
        }
    .end annotation

    .line 2984
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredSpanOrigins:Ljava/util/List;

    return-object v0
.end method

.method public getIgnoredTransactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/FilterString;",
            ">;"
        }
    .end annotation

    .line 3075
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredTransactions:Ljava/util/List;

    return-object v0
.end method

.method public getInAppExcludes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1338
    iget-object v0, p0, Lio/sentry/SentryOptions;->inAppExcludes:Ljava/util/List;

    return-object v0
.end method

.method public getInAppIncludes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1356
    iget-object v0, p0, Lio/sentry/SentryOptions;->inAppIncludes:Ljava/util/List;

    return-object v0
.end method

.method public getInitPriority()Lio/sentry/InitPriority;
    .locals 1

    .line 3350
    iget-object v0, p0, Lio/sentry/SentryOptions;->initPriority:Lio/sentry/InitPriority;

    return-object v0
.end method

.method public getInstrumenter()Lio/sentry/Instrumenter;
    .locals 1

    .line 2659
    iget-object v0, p0, Lio/sentry/SentryOptions;->instrumenter:Lio/sentry/Instrumenter;

    return-object v0
.end method

.method public getIntegrations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Integration;",
            ">;"
        }
    .end annotation

    .line 809
    iget-object v0, p0, Lio/sentry/SentryOptions;->integrations:Ljava/util/List;

    return-object v0
.end method

.method public getInternalTracesSampler()Lio/sentry/TracesSampler;
    .locals 3

    .line 1322
    iget-object v0, p0, Lio/sentry/SentryOptions;->internalTracesSampler:Lio/sentry/TracesSampler;

    if-nez v0, :cond_2

    .line 1323
    iget-object v0, p0, Lio/sentry/SentryOptions;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 1324
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/SentryOptions;->internalTracesSampler:Lio/sentry/TracesSampler;

    if-nez v1, :cond_0

    .line 1325
    new-instance v1, Lio/sentry/TracesSampler;

    invoke-direct {v1, p0}, Lio/sentry/TracesSampler;-><init>(Lio/sentry/SentryOptions;)V

    iput-object v1, p0, Lio/sentry/SentryOptions;->internalTracesSampler:Lio/sentry/TracesSampler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1327
    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_1

    .line 1323
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 1329
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    :goto_1
    iget-object v0, p0, Lio/sentry/SentryOptions;->internalTracesSampler:Lio/sentry/TracesSampler;

    return-object v0
.end method

.method public getLogger()Lio/sentry/ILogger;
    .locals 1

    .line 871
    iget-object v0, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    return-object v0
.end method

.method public getLogs()Lio/sentry/SentryOptions$Logs;
    .locals 1

    .line 3967
    iget-object v0, p0, Lio/sentry/SentryOptions;->logs:Lio/sentry/SentryOptions$Logs;

    return-object v0
.end method

.method public getMaxAttachmentSize()J
    .locals 2

    .line 1922
    iget-wide v0, p0, Lio/sentry/SentryOptions;->maxAttachmentSize:J

    return-wide v0
.end method

.method public getMaxBreadcrumbs()I
    .locals 1

    .line 1170
    iget v0, p0, Lio/sentry/SentryOptions;->maxBreadcrumbs:I

    return v0
.end method

.method public getMaxCacheItems()I
    .locals 1

    .line 2125
    iget v0, p0, Lio/sentry/SentryOptions;->maxCacheItems:I

    return v0
.end method

.method public getMaxDepth()I
    .locals 1

    .line 945
    iget v0, p0, Lio/sentry/SentryOptions;->maxDepth:I

    return v0
.end method

.method public getMaxFeatureFlags()I
    .locals 1

    .line 1188
    iget v0, p0, Lio/sentry/SentryOptions;->maxFeatureFlags:I

    return v0
.end method

.method public getMaxQueueSize()I
    .locals 1

    .line 1713
    iget v0, p0, Lio/sentry/SentryOptions;->maxQueueSize:I

    return v0
.end method

.method public getMaxRequestBodySize()Lio/sentry/SentryOptions$RequestSize;
    .locals 1

    .line 2138
    iget-object v0, p0, Lio/sentry/SentryOptions;->maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

    return-object v0
.end method

.method public getMaxSpans()I
    .locals 1

    .line 2088
    iget v0, p0, Lio/sentry/SentryOptions;->maxSpans:I

    return v0
.end method

.method public getMaxTraceFileSize()J
    .locals 2

    .line 2178
    iget-wide v0, p0, Lio/sentry/SentryOptions;->maxTraceFileSize:J

    return-wide v0
.end method

.method public getMetrics()Lio/sentry/SentryOptions$Metrics;
    .locals 1

    .line 3976
    iget-object v0, p0, Lio/sentry/SentryOptions;->metrics:Lio/sentry/SentryOptions$Metrics;

    return-object v0
.end method

.method public getModulesLoader()Lio/sentry/internal/modules/IModulesLoader;
    .locals 1

    .line 2680
    iget-object v0, p0, Lio/sentry/SentryOptions;->modulesLoader:Lio/sentry/internal/modules/IModulesLoader;

    return-object v0
.end method

.method public getMonotonicTicker()Lio/sentry/time/MonotonicTicker;
    .locals 1

    .line 3153
    invoke-static {}, Lio/sentry/time/JavaMonotonicTicker;->getInstance()Lio/sentry/time/MonotonicTicker;

    move-result-object v0

    return-object v0
.end method

.method public getOnDiscard()Lio/sentry/SentryOptions$OnDiscardCallback;
    .locals 1

    .line 1099
    iget-object v0, p0, Lio/sentry/SentryOptions;->onDiscard:Lio/sentry/SentryOptions$OnDiscardCallback;

    return-object v0
.end method

.method public getOnOversizedEvent()Lio/sentry/SentryOptions$OnOversizedEventCallback;
    .locals 1

    .line 1979
    iget-object v0, p0, Lio/sentry/SentryOptions;->onOversizedEvent:Lio/sentry/SentryOptions$OnOversizedEventCallback;

    return-object v0
.end method

.method public getOpenTelemetryMode()Lio/sentry/SentryOpenTelemetryMode;
    .locals 1

    .line 3407
    iget-object v0, p0, Lio/sentry/SentryOptions;->openTelemetryMode:Lio/sentry/SentryOpenTelemetryMode;

    return-object v0
.end method

.method public getOptionsObservers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/IOptionsObserver;",
            ">;"
        }
    .end annotation

    .line 1868
    iget-object v0, p0, Lio/sentry/SentryOptions;->optionsObservers:Ljava/util/List;

    return-object v0
.end method

.method public getOrgId()Ljava/lang/String;
    .locals 1

    .line 2490
    iget-object v0, p0, Lio/sentry/SentryOptions;->orgId:Ljava/lang/String;

    return-object v0
.end method

.method public getOutboxPath()Ljava/lang/String;
    .locals 3

    .line 1148
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    .line 1149
    .local v0, "cacheDirPath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1150
    const/4 v1, 0x0

    return-object v1

    .line 1152
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "outbox"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPerformanceCollectors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/IPerformanceCollector;",
            ">;"
        }
    .end annotation

    .line 3179
    iget-object v0, p0, Lio/sentry/SentryOptions;->performanceCollectors:Ljava/util/List;

    return-object v0
.end method

.method public getProfileLifecycle()Lio/sentry/ProfileLifecycle;
    .locals 1

    .line 2335
    iget-object v0, p0, Lio/sentry/SentryOptions;->profileLifecycle:Lio/sentry/ProfileLifecycle;

    return-object v0
.end method

.method public getProfileSessionSampleRate()Ljava/lang/Double;
    .locals 1

    .line 2310
    iget-object v0, p0, Lio/sentry/SentryOptions;->profileSessionSampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getProfilerConverter()Lio/sentry/IProfileConverter;
    .locals 1

    .line 710
    iget-object v0, p0, Lio/sentry/SentryOptions;->profilerConverter:Lio/sentry/IProfileConverter;

    return-object v0
.end method

.method public getProfilesSampleRate()Ljava/lang/Double;
    .locals 1

    .line 2282
    iget-object v0, p0, Lio/sentry/SentryOptions;->profilesSampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getProfilesSampler()Lio/sentry/SentryOptions$ProfilesSamplerCallback;
    .locals 1

    .line 2264
    iget-object v0, p0, Lio/sentry/SentryOptions;->profilesSampler:Lio/sentry/SentryOptions$ProfilesSamplerCallback;

    return-object v0
.end method

.method public getProfilingTracesDirPath()Ljava/lang/String;
    .locals 3

    .line 2417
    iget-object v0, p0, Lio/sentry/SentryOptions;->profilingTracesDirPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/SentryOptions;->profilingTracesDirPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2418
    iget-object v0, p0, Lio/sentry/SentryOptions;->dsnHash:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2419
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/sentry/SentryOptions;->profilingTracesDirPath:Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/SentryOptions;->dsnHash:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2420
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryOptions;->profilingTracesDirPath:Ljava/lang/String;

    .line 2418
    :goto_0
    return-object v0

    .line 2423
    :cond_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    .line 2425
    .local v0, "cacheDirPath":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 2426
    const/4 v1, 0x0

    return-object v1

    .line 2429
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "profiling_traces"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getProfilingTracesHz()I
    .locals 1

    .line 3226
    iget v0, p0, Lio/sentry/SentryOptions;->profilingTracesHz:I

    return v0
.end method

.method public getProguardUuid()Ljava/lang/String;
    .locals 1

    .line 2523
    iget-object v0, p0, Lio/sentry/SentryOptions;->proguardUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getProxy()Lio/sentry/SentryOptions$Proxy;
    .locals 1

    .line 1242
    iget-object v0, p0, Lio/sentry/SentryOptions;->proxy:Lio/sentry/SentryOptions$Proxy;

    return-object v0
.end method

.method public getReadTimeoutMillis()I
    .locals 1

    .line 1676
    iget v0, p0, Lio/sentry/SentryOptions;->readTimeoutMillis:I

    return v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 1206
    iget-object v0, p0, Lio/sentry/SentryOptions;->release:Ljava/lang/String;

    return-object v0
.end method

.method public getReplayController()Lio/sentry/ReplayController;
    .locals 1

    .line 3306
    iget-object v0, p0, Lio/sentry/SentryOptions;->replayController:Lio/sentry/ReplayController;

    return-object v0
.end method

.method public getSampleRate()Ljava/lang/Double;
    .locals 1

    .line 1260
    iget-object v0, p0, Lio/sentry/SentryOptions;->sampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getScopeObservers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/IScopeObserver;",
            ">;"
        }
    .end annotation

    .line 1838
    iget-object v0, p0, Lio/sentry/SentryOptions;->observers:Ljava/util/List;

    return-object v0
.end method

.method public getScopesStorageFactory()Lio/sentry/IScopesStorageFactory;
    .locals 1

    .line 3951
    iget-object v0, p0, Lio/sentry/SentryOptions;->scopesStorageFactory:Lio/sentry/IScopesStorageFactory;

    return-object v0
.end method

.method public getSdkVersion()Lio/sentry/protocol/SdkVersion;
    .locals 1

    .line 1733
    iget-object v0, p0, Lio/sentry/SentryOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    return-object v0
.end method

.method public getSentryClientName()Ljava/lang/String;
    .locals 1

    .line 990
    iget-object v0, p0, Lio/sentry/SentryOptions;->sentryClientName:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializer()Lio/sentry/ISerializer;
    .locals 1

    .line 927
    iget-object v0, p0, Lio/sentry/SentryOptions;->serializer:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISerializer;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 1483
    iget-object v0, p0, Lio/sentry/SentryOptions;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionFlushTimeoutMillis()J
    .locals 2

    .line 3242
    iget-wide v0, p0, Lio/sentry/SentryOptions;->sessionFlushTimeoutMillis:J

    return-wide v0
.end method

.method public getSessionReplay()Lio/sentry/SentryReplayOptions;
    .locals 1

    .line 3412
    iget-object v0, p0, Lio/sentry/SentryOptions;->sessionReplay:Lio/sentry/SentryReplayOptions;

    return-object v0
.end method

.method public getSessionTrackingIntervalMillis()J
    .locals 2

    .line 1519
    iget-wide v0, p0, Lio/sentry/SentryOptions;->sessionTrackingIntervalMillis:J

    return-wide v0
.end method

.method public getShutdownTimeoutMillis()J
    .locals 2

    .line 972
    iget-wide v0, p0, Lio/sentry/SentryOptions;->shutdownTimeoutMillis:J

    return-wide v0
.end method

.method public getSocketTagger()Lio/sentry/ISocketTagger;
    .locals 1

    .line 3443
    iget-object v0, p0, Lio/sentry/SentryOptions;->socketTagger:Lio/sentry/ISocketTagger;

    return-object v0
.end method

.method public getSpanFactory()Lio/sentry/ISpanFactory;
    .locals 1

    .line 3936
    iget-object v0, p0, Lio/sentry/SentryOptions;->spanFactory:Lio/sentry/ISpanFactory;

    return-object v0
.end method

.method public getSpotlightConnectionUrl()Ljava/lang/String;
    .locals 1

    .line 3265
    iget-object v0, p0, Lio/sentry/SentryOptions;->spotlightConnectionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1742
    iget-object v0, p0, Lio/sentry/SentryOptions;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1896
    iget-object v0, p0, Lio/sentry/SentryOptions;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public getThreadChecker()Lio/sentry/util/thread/IThreadChecker;
    .locals 1

    .line 2748
    iget-object v0, p0, Lio/sentry/SentryOptions;->threadChecker:Lio/sentry/util/thread/IThreadChecker;

    return-object v0
.end method

.method public getTimerExecutorService()Lio/sentry/ISentryExecutorService;
    .locals 1

    .line 1636
    iget-object v0, p0, Lio/sentry/SentryOptions;->timerExecutorService:Lio/sentry/ISentryExecutorService;

    return-object v0
.end method

.method public getTracePropagationTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2442
    iget-object v0, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2443
    iget-object v0, p0, Lio/sentry/SentryOptions;->defaultTracePropagationTargets:Ljava/util/List;

    return-object v0

    .line 2445
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    return-object v0
.end method

.method public getTracesSampleRate()Ljava/lang/Double;
    .locals 1

    .line 1284
    iget-object v0, p0, Lio/sentry/SentryOptions;->tracesSampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getTracesSampler()Lio/sentry/SentryOptions$TracesSamplerCallback;
    .locals 1

    .line 1308
    iget-object v0, p0, Lio/sentry/SentryOptions;->tracesSampler:Lio/sentry/SentryOptions$TracesSamplerCallback;

    return-object v0
.end method

.method public getTransactionProfiler()Lio/sentry/ITransactionProfiler;
    .locals 1

    .line 2196
    iget-object v0, p0, Lio/sentry/SentryOptions;->transactionProfiler:Lio/sentry/ITransactionProfiler;

    return-object v0
.end method

.method public getTransportFactory()Lio/sentry/ITransportFactory;
    .locals 1

    .line 1374
    iget-object v0, p0, Lio/sentry/SentryOptions;->transportFactory:Lio/sentry/ITransportFactory;

    return-object v0
.end method

.method public getTransportGate()Lio/sentry/transport/ITransportGate;
    .locals 1

    .line 1411
    iget-object v0, p0, Lio/sentry/SentryOptions;->transportGate:Lio/sentry/transport/ITransportGate;

    return-object v0
.end method

.method public getVersionDetector()Lio/sentry/IVersionDetector;
    .locals 1

    .line 3211
    iget-object v0, p0, Lio/sentry/SentryOptions;->versionDetector:Lio/sentry/IVersionDetector;

    return-object v0
.end method

.method public final getViewHierarchyExporters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;",
            ">;"
        }
    .end annotation

    .line 2734
    iget-object v0, p0, Lio/sentry/SentryOptions;->viewHierarchyExporters:Ljava/util/List;

    return-object v0
.end method

.method public isAttachServerName()Z
    .locals 1

    .line 1501
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->attachServerName:Z

    return v0
.end method

.method public isAttachStacktrace()Z
    .locals 1

    .line 1429
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->attachStacktrace:Z

    return v0
.end method

.method public isAttachThreads()Z
    .locals 1

    .line 1447
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->attachThreads:Z

    return v0
.end method

.method public isCaptureOpenTelemetryEvents()Z
    .locals 1

    .line 3434
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->captureOpenTelemetryEvents:Z

    return v0
.end method

.method public isContinuousProfilingEnabled()Z
    .locals 4

    .line 2252
    iget-object v0, p0, Lio/sentry/SentryOptions;->profilesSampleRate:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/SentryOptions;->profilesSampler:Lio/sentry/SentryOptions$ProfilesSamplerCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/SentryOptions;->profileSessionSampleRate:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/SentryOptions;->profileSessionSampleRate:Ljava/lang/Double;

    .line 2255
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2252
    :goto_0
    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 852
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->debug:Z

    return v0
.end method

.method public isEnableAppStartProfiling()Z
    .locals 1

    .line 2954
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isProfilingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isContinuousProfilingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableAppStartProfiling:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableAutoSessionTracking()Z
    .locals 1

    .line 1465
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableAutoSessionTracking:Z

    return v0
.end method

.method public isEnableBackpressureHandling()Z
    .locals 1

    .line 3237
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableBackpressureHandling:Z

    return v0
.end method

.method public isEnableCacheTracing()Z
    .locals 1

    .line 2869
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableCacheTracing:Z

    return v0
.end method

.method public isEnableDatabaseTransactionTracing()Z
    .locals 1

    .line 2851
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableDatabaseTransactionTracing:Z

    return v0
.end method

.method public isEnableDeduplication()Z
    .locals 1

    .line 1942
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableDeduplication:Z

    return v0
.end method

.method public isEnableEventSizeLimiting()Z
    .locals 1

    .line 1960
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableEventSizeLimiting:Z

    return v0
.end method

.method public isEnableExternalConfiguration()Z
    .locals 1

    .line 1877
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableExternalConfiguration:Z

    return v0
.end method

.method public isEnableLegacyProfiling()Z
    .locals 1

    .line 2375
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableLegacyProfiling:Z

    return v0
.end method

.method public isEnablePrettySerializationOutput()Z
    .locals 1

    .line 2925
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enablePrettySerializationOutput:Z

    return v0
.end method

.method public isEnableQueueTracing()Z
    .locals 1

    .line 2888
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableQueueTracing:Z

    return v0
.end method

.method public isEnableScopePersistence()Z
    .locals 1

    .line 3284
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableScopePersistence:Z

    return v0
.end method

.method public isEnableScreenTracking()Z
    .locals 1

    .line 3327
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableScreenTracking:Z

    return v0
.end method

.method public isEnableShutdownHook()Z
    .locals 1

    .line 2107
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableShutdownHook:Z

    return v0
.end method

.method public isEnableSpotlight()Z
    .locals 1

    .line 3275
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableSpotlight:Z

    return v0
.end method

.method public isEnableTimeToFullDisplayTracing()Z
    .locals 1

    .line 2782
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableTimeToFullDisplayTracing:Z

    return v0
.end method

.method public isEnableUncaughtExceptionHandler()Z
    .locals 1

    .line 1573
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableUncaughtExceptionHandler:Z

    return v0
.end method

.method public isEnableUserInteractionBreadcrumbs()Z
    .locals 1

    .line 2629
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableUserInteractionBreadcrumbs:Z

    return v0
.end method

.method public isEnableUserInteractionTracing()Z
    .locals 1

    .line 2621
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableUserInteractionTracing:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 2907
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enabled:Z

    return v0
.end method

.method public isForceInit()Z
    .locals 1

    .line 3367
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->forceInit:Z

    return v0
.end method

.method public isGlobalHubMode()Ljava/lang/Boolean;
    .locals 1

    .line 3388
    iget-object v0, p0, Lio/sentry/SentryOptions;->globalHubMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isPrintUncaughtStackTrace()Z
    .locals 1

    .line 1591
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->printUncaughtStackTrace:Z

    return v0
.end method

.method public isProfilingEnabled()Z
    .locals 4

    .line 2241
    iget-object v0, p0, Lio/sentry/SentryOptions;->profilesSampleRate:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/SentryOptions;->profilesSampleRate:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lio/sentry/SentryOptions;->profilesSampler:Lio/sentry/SentryOptions$ProfilesSamplerCallback;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPropagateTraceparent()Z
    .locals 1

    .line 2469
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->propagateTraceparent:Z

    return v0
.end method

.method public isSendClientReports()Z
    .locals 1

    .line 2602
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->sendClientReports:Z

    return v0
.end method

.method public isSendDefaultPii()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1779
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->sendDefaultPii:Z

    return v0
.end method

.method public isSendModules()Z
    .locals 1

    .line 2934
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->sendModules:Z

    return v0
.end method

.method public isStartProfilerOnAppStart()Z
    .locals 1

    .line 2353
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->startProfilerOnAppStart:Z

    return v0
.end method

.method public isStrictTraceContinuation()Z
    .locals 1

    .line 2482
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->strictTraceContinuation:Z

    return v0
.end method

.method public isTraceOptionsRequests()Z
    .locals 1

    .line 2833
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->traceOptionsRequests:Z

    return v0
.end method

.method public isTraceSampling()Z
    .locals 1

    .line 2155
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->traceSampling:Z

    return v0
.end method

.method public isTracingEnabled()Z
    .locals 1

    .line 1999
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getTracesSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getTracesSampler()Lio/sentry/SentryOptions$TracesSamplerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method synthetic lambda$new$0$io-sentry-SentryOptions()Lio/sentry/Dsn;
    .locals 2

    .line 113
    new-instance v0, Lio/sentry/Dsn;

    iget-object v1, p0, Lio/sentry/SentryOptions;->dsn:Ljava/lang/String;

    invoke-direct {v0, v1}, Lio/sentry/Dsn;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method synthetic lambda$new$1$io-sentry-SentryOptions()Lio/sentry/ISerializer;
    .locals 1

    .line 155
    new-instance v0, Lio/sentry/JsonSerializer;

    invoke-direct {v0, p0}, Lio/sentry/JsonSerializer;-><init>(Lio/sentry/SentryOptions;)V

    return-object v0
.end method

.method synthetic lambda$new$2$io-sentry-SentryOptions()Lio/sentry/IEnvelopeReader;
    .locals 2

    .line 159
    new-instance v0, Lio/sentry/EnvelopeReader;

    iget-object v1, p0, Lio/sentry/SentryOptions;->serializer:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v1}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISerializer;

    invoke-direct {v0, v1}, Lio/sentry/EnvelopeReader;-><init>(Lio/sentry/ISerializer;)V

    return-object v0
.end method

.method synthetic lambda$new$4$io-sentry-SentryOptions()Lio/sentry/HostnameCache;
    .locals 2

    .line 549
    new-instance v0, Lio/sentry/HostnameCache;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getMonotonicTicker()Lio/sentry/time/MonotonicTicker;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/HostnameCache;-><init>(Lio/sentry/time/MonotonicTicker;)V

    return-object v0
.end method

.method synthetic lambda$new$5$io-sentry-SentryOptions(Lio/sentry/protocol/SentryId;Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V
    .locals 4
    .param p1, "associatedEventId"    # Lio/sentry/protocol/SentryId;
    .param p2, "configurator"    # Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;

    .line 3641
    iget-object v0, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "showForm() can only be called in Android."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method loadLazyFields()V
    .locals 0

    .line 3460
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 3461
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->retrieveParsedDsn()Lio/sentry/Dsn;

    .line 3462
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getEnvelopeReader()Lio/sentry/IEnvelopeReader;

    .line 3463
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    .line 3464
    return-void
.end method

.method public merge(Lio/sentry/ExternalOptions;)V
    .locals 6
    .param p1, "options"    # Lio/sentry/ExternalOptions;

    .line 3689
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDsn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3690
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDsn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setDsn(Ljava/lang/String;)V

    .line 3692
    :cond_0
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3693
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnvironment(Ljava/lang/String;)V

    .line 3695
    :cond_1
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getRelease()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3696
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getRelease()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setRelease(Ljava/lang/String;)V

    .line 3698
    :cond_2
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDist()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3699
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setDist(Ljava/lang/String;)V

    .line 3701
    :cond_3
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getServerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3702
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setServerName(Ljava/lang/String;)V

    .line 3704
    :cond_4
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProxy()Lio/sentry/SentryOptions$Proxy;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3705
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProxy()Lio/sentry/SentryOptions$Proxy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setProxy(Lio/sentry/SentryOptions$Proxy;)V

    .line 3707
    :cond_5
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnableUncaughtExceptionHandler()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3708
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnableUncaughtExceptionHandler()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableUncaughtExceptionHandler(Z)V

    .line 3710
    :cond_6
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getPrintUncaughtStackTrace()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3711
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getPrintUncaughtStackTrace()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setPrintUncaughtStackTrace(Z)V

    .line 3713
    :cond_7
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3714
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getSampleRate()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setSampleRate(Ljava/lang/Double;)V

    .line 3716
    :cond_8
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getTracesSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3717
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getTracesSampleRate()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setTracesSampleRate(Ljava/lang/Double;)V

    .line 3719
    :cond_9
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 3720
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setProfilesSampleRate(Ljava/lang/Double;)V

    .line 3722
    :cond_a
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDebug()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3723
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDebug()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setDebug(Z)V

    .line 3725
    :cond_b
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnableDeduplication()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3726
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnableDeduplication()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableDeduplication(Z)V

    .line 3728
    :cond_c
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getSendClientReports()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3729
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getSendClientReports()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setSendClientReports(Z)V

    .line 3731
    :cond_d
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isForceInit()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 3732
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isForceInit()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setForceInit(Z)V

    .line 3734
    :cond_e
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getTags()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3735
    .local v0, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3736
    .local v2, "tag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lio/sentry/SentryOptions;->tags:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3737
    .end local v2    # "tag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 3738
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getInAppIncludes()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3739
    .local v1, "inAppIncludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3740
    .local v3, "inAppInclude":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lio/sentry/SentryOptions;->addInAppInclude(Ljava/lang/String;)V

    .line 3741
    .end local v3    # "inAppInclude":Ljava/lang/String;
    goto :goto_1

    .line 3742
    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getInAppExcludes()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3743
    .local v2, "inAppExcludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3744
    .local v4, "inAppExclude":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->addInAppExclude(Ljava/lang/String;)V

    .line 3745
    .end local v4    # "inAppExclude":Ljava/lang/String;
    goto :goto_2

    .line 3747
    :cond_11
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getIgnoredExceptionsForType()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 3748
    .local v4, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->addIgnoredExceptionForType(Ljava/lang/Class;)V

    .line 3749
    .end local v4    # "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    goto :goto_3

    .line 3750
    :cond_12
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getTracePropagationTargets()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 3751
    new-instance v3, Ljava/util/ArrayList;

    .line 3752
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getTracePropagationTargets()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3753
    .local v3, "tracePropagationTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v3}, Lio/sentry/SentryOptions;->setTracePropagationTargets(Ljava/util/List;)V

    .line 3755
    .end local v3    # "tracePropagationTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_13
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getContextTags()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3756
    .local v3, "contextTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3757
    .local v5, "contextTag":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lio/sentry/SentryOptions;->addContextTag(Ljava/lang/String;)V

    .line 3758
    .end local v5    # "contextTag":Ljava/lang/String;
    goto :goto_4

    .line 3759
    :cond_14
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 3760
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setProguardUuid(Ljava/lang/String;)V

    .line 3762
    :cond_15
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 3763
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setIdleTimeout(Ljava/lang/Long;)V

    .line 3765
    :cond_16
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getShutdownTimeoutMillis()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 3766
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getShutdownTimeoutMillis()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lio/sentry/SentryOptions;->setShutdownTimeoutMillis(J)V

    .line 3768
    :cond_17
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getSessionFlushTimeoutMillis()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 3769
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getSessionFlushTimeoutMillis()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lio/sentry/SentryOptions;->setSessionFlushTimeoutMillis(J)V

    .line 3771
    :cond_18
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getBundleIds()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3772
    .local v5, "bundleId":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lio/sentry/SentryOptions;->addBundleId(Ljava/lang/String;)V

    .line 3773
    .end local v5    # "bundleId":Ljava/lang/String;
    goto :goto_5

    .line 3775
    :cond_19
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnabled()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 3776
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setEnabled(Z)V

    .line 3778
    :cond_1a
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnablePrettySerializationOutput()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 3779
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnablePrettySerializationOutput()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setEnablePrettySerializationOutput(Z)V

    .line 3782
    :cond_1b
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isSendModules()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 3783
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isSendModules()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setSendModules(Z)V

    .line 3785
    :cond_1c
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getIgnoredCheckIns()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 3786
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getIgnoredCheckIns()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3787
    .local v4, "ignoredCheckIns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setIgnoredCheckIns(Ljava/util/List;)V

    .line 3789
    .end local v4    # "ignoredCheckIns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getIgnoredTransactions()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 3790
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getIgnoredTransactions()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3791
    .local v4, "ignoredTransactions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setIgnoredTransactions(Ljava/util/List;)V

    .line 3793
    .end local v4    # "ignoredTransactions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1e
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getIgnoredErrors()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 3794
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getIgnoredErrors()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3795
    .local v4, "ignoredExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setIgnoredErrors(Ljava/util/List;)V

    .line 3797
    .end local v4    # "ignoredExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1f
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnableBackpressureHandling()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 3798
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnableBackpressureHandling()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setEnableBackpressureHandling(Z)V

    .line 3800
    :cond_20
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnableDatabaseTransactionTracing()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_21

    .line 3801
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnableDatabaseTransactionTracing()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setEnableDatabaseTransactionTracing(Z)V

    .line 3803
    :cond_21
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnableCacheTracing()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 3804
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnableCacheTracing()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setEnableCacheTracing(Z)V

    .line 3806
    :cond_22
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnableQueueTracing()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 3807
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnableQueueTracing()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setEnableQueueTracing(Z)V

    .line 3809
    :cond_23
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getMaxRequestBodySize()Lio/sentry/SentryOptions$RequestSize;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 3810
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getMaxRequestBodySize()Lio/sentry/SentryOptions$RequestSize;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setMaxRequestBodySize(Lio/sentry/SentryOptions$RequestSize;)V

    .line 3812
    :cond_24
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isSendDefaultPii()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 3813
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isSendDefaultPii()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setSendDefaultPii(Z)V

    .line 3815
    :cond_25
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDataCollection()Lio/sentry/DataCollection;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 3816
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDataCollection()Lio/sentry/DataCollection;

    move-result-object v4

    invoke-direct {p0, v4}, Lio/sentry/SentryOptions;->mergeDataCollection(Lio/sentry/DataCollection;)V

    .line 3818
    :cond_26
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isCaptureOpenTelemetryEvents()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 3819
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isCaptureOpenTelemetryEvents()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setCaptureOpenTelemetryEvents(Z)V

    .line 3821
    :cond_27
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnableSpotlight()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 3822
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnableSpotlight()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setEnableSpotlight(Z)V

    .line 3825
    :cond_28
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getSpotlightConnectionUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 3826
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getSpotlightConnectionUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setSpotlightConnectionUrl(Ljava/lang/String;)V

    .line 3829
    :cond_29
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isGlobalHubMode()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_2a

    .line 3830
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isGlobalHubMode()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setGlobalHubMode(Ljava/lang/Boolean;)V

    .line 3833
    :cond_2a
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 3834
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v4

    if-nez v4, :cond_2b

    .line 3835
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setCron(Lio/sentry/SentryOptions$Cron;)V

    goto/16 :goto_6

    .line 3837
    :cond_2b
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions$Cron;->getDefaultCheckinMargin()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 3838
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v4

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SentryOptions$Cron;->getDefaultCheckinMargin()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/sentry/SentryOptions$Cron;->setDefaultCheckinMargin(Ljava/lang/Long;)V

    .line 3840
    :cond_2c
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions$Cron;->getDefaultMaxRuntime()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 3841
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v4

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SentryOptions$Cron;->getDefaultMaxRuntime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/sentry/SentryOptions$Cron;->setDefaultMaxRuntime(Ljava/lang/Long;)V

    .line 3843
    :cond_2d
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions$Cron;->getDefaultTimezone()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2e

    .line 3844
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v4

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SentryOptions$Cron;->getDefaultTimezone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/sentry/SentryOptions$Cron;->setDefaultTimezone(Ljava/lang/String;)V

    .line 3846
    :cond_2e
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions$Cron;->getDefaultFailureIssueThreshold()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 3847
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v4

    .line 3848
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SentryOptions$Cron;->getDefaultFailureIssueThreshold()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/sentry/SentryOptions$Cron;->setDefaultFailureIssueThreshold(Ljava/lang/Long;)V

    .line 3850
    :cond_2f
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions$Cron;->getDefaultRecoveryThreshold()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 3851
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v4

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SentryOptions$Cron;->getDefaultRecoveryThreshold()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/sentry/SentryOptions$Cron;->setDefaultRecoveryThreshold(Ljava/lang/Long;)V

    .line 3856
    :cond_30
    :goto_6
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnableLogs()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 3857
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogs()Lio/sentry/SentryOptions$Logs;

    move-result-object v4

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnableLogs()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lio/sentry/SentryOptions$Logs;->setEnabled(Z)V

    .line 3860
    :cond_31
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnableMetrics()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 3861
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getMetrics()Lio/sentry/SentryOptions$Metrics;

    move-result-object v4

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnableMetrics()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lio/sentry/SentryOptions$Metrics;->setEnabled(Z)V

    .line 3864
    :cond_32
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProfileSessionSampleRate()Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 3865
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProfileSessionSampleRate()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setProfileSessionSampleRate(Ljava/lang/Double;)V

    .line 3868
    :cond_33
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 3869
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setProfilingTracesDirPath(Ljava/lang/String;)V

    .line 3872
    :cond_34
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProfileLifecycle()Lio/sentry/ProfileLifecycle;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 3873
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProfileLifecycle()Lio/sentry/ProfileLifecycle;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setProfileLifecycle(Lio/sentry/ProfileLifecycle;)V

    .line 3875
    :cond_35
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isStrictTraceContinuation()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_36

    .line 3876
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isStrictTraceContinuation()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setStrictTraceContinuation(Z)V

    .line 3878
    :cond_36
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getOrgId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 3879
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getOrgId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setOrgId(Ljava/lang/String;)V

    .line 3881
    :cond_37
    return-void
.end method

.method retrieveParsedDsn()Lio/sentry/Dsn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 831
    iget-object v0, p0, Lio/sentry/SentryOptions;->parsedDsn:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/Dsn;

    return-object v0
.end method

.method public setAppStartExtender(Lio/sentry/IAppStartExtender;)V
    .locals 1
    .param p1, "appStartExtender"    # Lio/sentry/IAppStartExtender;

    .line 2823
    nop

    .line 2824
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/sentry/NoOpAppStartExtender;->getInstance()Lio/sentry/NoOpAppStartExtender;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/sentry/SentryOptions;->appStartExtender:Lio/sentry/IAppStartExtender;

    .line 2825
    return-void
.end method

.method public setAttachServerName(Z)V
    .locals 0
    .param p1, "attachServerName"    # Z

    .line 1510
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->attachServerName:Z

    .line 1511
    return-void
.end method

.method public setAttachStacktrace(Z)V
    .locals 0
    .param p1, "attachStacktrace"    # Z

    .line 1438
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->attachStacktrace:Z

    .line 1439
    return-void
.end method

.method public setAttachThreads(Z)V
    .locals 0
    .param p1, "attachThreads"    # Z

    .line 1456
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->attachThreads:Z

    .line 1457
    return-void
.end method

.method public setBackpressureMonitor(Lio/sentry/backpressure/IBackpressureMonitor;)V
    .locals 0
    .param p1, "backpressureMonitor"    # Lio/sentry/backpressure/IBackpressureMonitor;

    .line 3200
    iput-object p1, p0, Lio/sentry/SentryOptions;->backpressureMonitor:Lio/sentry/backpressure/IBackpressureMonitor;

    .line 3201
    return-void
.end method

.method public setBeforeBreadcrumb(Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;)V
    .locals 0
    .param p1, "beforeBreadcrumb"    # Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

    .line 1090
    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeBreadcrumb:Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

    .line 1091
    return-void
.end method

.method public setBeforeEnvelopeCallback(Lio/sentry/SentryOptions$BeforeEnvelopeCallback;)V
    .locals 0
    .param p1, "beforeEnvelopeCallback"    # Lio/sentry/SentryOptions$BeforeEnvelopeCallback;

    .line 3259
    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeEnvelopeCallback:Lio/sentry/SentryOptions$BeforeEnvelopeCallback;

    .line 3260
    return-void
.end method

.method public setBeforeSend(Lio/sentry/SentryOptions$BeforeSendCallback;)V
    .locals 0
    .param p1, "beforeSend"    # Lio/sentry/SentryOptions$BeforeSendCallback;

    .line 1017
    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeSend:Lio/sentry/SentryOptions$BeforeSendCallback;

    .line 1018
    return-void
.end method

.method public setBeforeSendFeedback(Lio/sentry/SentryOptions$BeforeSendCallback;)V
    .locals 0
    .param p1, "beforeSendFeedback"    # Lio/sentry/SentryOptions$BeforeSendCallback;

    .line 1054
    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeSendFeedback:Lio/sentry/SentryOptions$BeforeSendCallback;

    .line 1055
    return-void
.end method

.method public setBeforeSendReplay(Lio/sentry/SentryOptions$BeforeSendReplayCallback;)V
    .locals 0
    .param p1, "beforeSendReplay"    # Lio/sentry/SentryOptions$BeforeSendReplayCallback;

    .line 1072
    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeSendReplay:Lio/sentry/SentryOptions$BeforeSendReplayCallback;

    .line 1073
    return-void
.end method

.method public setBeforeSendTransaction(Lio/sentry/SentryOptions$BeforeSendTransactionCallback;)V
    .locals 0
    .param p1, "beforeSendTransaction"    # Lio/sentry/SentryOptions$BeforeSendTransactionCallback;

    .line 1036
    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeSendTransaction:Lio/sentry/SentryOptions$BeforeSendTransactionCallback;

    .line 1037
    return-void
.end method

.method public setCacheDirPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheDirPath"    # Ljava/lang/String;

    .line 1161
    iput-object p1, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    .line 1162
    return-void
.end method

.method public setCaptureOpenTelemetryEvents(Z)V
    .locals 0
    .param p1, "captureOpenTelemetryEvents"    # Z

    .line 3429
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->captureOpenTelemetryEvents:Z

    .line 3430
    return-void
.end method

.method public setCompositePerformanceCollector(Lio/sentry/CompositePerformanceCollector;)V
    .locals 0
    .param p1, "compositePerformanceCollector"    # Lio/sentry/CompositePerformanceCollector;

    .line 2773
    iput-object p1, p0, Lio/sentry/SentryOptions;->compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

    .line 2774
    return-void
.end method

.method public setConnectionStatusProvider(Lio/sentry/IConnectionStatusProvider;)V
    .locals 0
    .param p1, "connectionStatusProvider"    # Lio/sentry/IConnectionStatusProvider;

    .line 3189
    iput-object p1, p0, Lio/sentry/SentryOptions;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    .line 3190
    return-void
.end method

.method public setConnectionTimeoutMillis(I)V
    .locals 0
    .param p1, "connectionTimeoutMillis"    # I

    .line 1667
    iput p1, p0, Lio/sentry/SentryOptions;->connectionTimeoutMillis:I

    .line 1668
    return-void
.end method

.method public setContinuousProfiler(Lio/sentry/IContinuousProfiler;)V
    .locals 2
    .param p1, "continuousProfiler"    # Lio/sentry/IContinuousProfiler;

    .line 2229
    iget-object v0, p0, Lio/sentry/SentryOptions;->continuousProfiler:Lio/sentry/IContinuousProfiler;

    invoke-static {}, Lio/sentry/NoOpContinuousProfiler;->getInstance()Lio/sentry/NoOpContinuousProfiler;

    move-result-object v1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 2231
    iput-object p1, p0, Lio/sentry/SentryOptions;->continuousProfiler:Lio/sentry/IContinuousProfiler;

    .line 2233
    :cond_0
    return-void
.end method

.method public setCron(Lio/sentry/SentryOptions$Cron;)V
    .locals 0
    .param p1, "cron"    # Lio/sentry/SentryOptions$Cron;

    .line 3297
    iput-object p1, p0, Lio/sentry/SentryOptions;->cron:Lio/sentry/SentryOptions$Cron;

    .line 3298
    return-void
.end method

.method public setDataCollection(Lio/sentry/DataCollection;)V
    .locals 0
    .param p1, "dataCollection"    # Lio/sentry/DataCollection;

    .line 1811
    if-eqz p1, :cond_0

    .line 1812
    iput-object p1, p0, Lio/sentry/SentryOptions;->dataCollection:Lio/sentry/DataCollection;

    .line 1814
    :cond_0
    return-void
.end method

.method public setDateProvider(Lio/sentry/SentryDateProvider;)V
    .locals 1
    .param p1, "dateProvider"    # Lio/sentry/SentryDateProvider;

    .line 3128
    iget-object v0, p0, Lio/sentry/SentryOptions;->dateProvider:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0, p1}, Lio/sentry/util/LazyEvaluator;->setValue(Ljava/lang/Object;)V

    .line 3129
    return-void
.end method

.method public setDeadlineTimeout(J)V
    .locals 0
    .param p1, "deadlineTimeout"    # J

    .line 2408
    iput-wide p1, p0, Lio/sentry/SentryOptions;->deadlineTimeout:J

    .line 2409
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .line 861
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->debug:Z

    .line 862
    return-void
.end method

.method public setDebugMetaLoader(Lio/sentry/internal/debugmeta/IDebugMetaLoader;)V
    .locals 1
    .param p1, "debugMetaLoader"    # Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    .line 2701
    nop

    .line 2702
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;->getInstance()Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/sentry/SentryOptions;->debugMetaLoader:Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    .line 2703
    return-void
.end method

.method public setDefaultScopeType(Lio/sentry/ScopeType;)V
    .locals 0
    .param p1, "scopeType"    # Lio/sentry/ScopeType;

    .line 3336
    iput-object p1, p0, Lio/sentry/SentryOptions;->defaultScopeType:Lio/sentry/ScopeType;

    .line 3337
    return-void
.end method

.method public setDiagnosticLevel(Lio/sentry/SentryLevel;)V
    .locals 1
    .param p1, "diagnosticLevel"    # Lio/sentry/SentryLevel;

    .line 918
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lio/sentry/SentryOptions;->DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/SentryLevel;

    :goto_0
    iput-object v0, p0, Lio/sentry/SentryOptions;->diagnosticLevel:Lio/sentry/SentryLevel;

    .line 919
    return-void
.end method

.method public setDist(Ljava/lang/String;)V
    .locals 0
    .param p1, "dist"    # Ljava/lang/String;

    .line 1402
    iput-object p1, p0, Lio/sentry/SentryOptions;->dist:Ljava/lang/String;

    .line 1403
    return-void
.end method

.method public setDistinctId(Ljava/lang/String;)V
    .locals 0
    .param p1, "distinctId"    # Ljava/lang/String;

    .line 1546
    iput-object p1, p0, Lio/sentry/SentryOptions;->distinctId:Ljava/lang/String;

    .line 1547
    return-void
.end method

.method public setDistribution(Lio/sentry/SentryOptions$DistributionOptions;)V
    .locals 1
    .param p1, "distribution"    # Lio/sentry/SentryOptions$DistributionOptions;

    .line 4285
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lio/sentry/SentryOptions$DistributionOptions;

    invoke-direct {v0}, Lio/sentry/SentryOptions$DistributionOptions;-><init>()V

    :goto_0
    iput-object v0, p0, Lio/sentry/SentryOptions;->distribution:Lio/sentry/SentryOptions$DistributionOptions;

    .line 4286
    return-void
.end method

.method public setDistributionController(Lio/sentry/IDistributionApi;)V
    .locals 1
    .param p1, "distributionController"    # Lio/sentry/IDistributionApi;

    .line 3321
    nop

    .line 3322
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/sentry/NoOpDistributionApi;->getInstance()Lio/sentry/NoOpDistributionApi;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/sentry/SentryOptions;->distributionController:Lio/sentry/IDistributionApi;

    .line 3323
    return-void
.end method

.method public setDsn(Ljava/lang/String;)V
    .locals 2
    .param p1, "dsn"    # Ljava/lang/String;

    .line 840
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/sentry/SentryOptions;->dsn:Ljava/lang/String;

    .line 841
    iget-object v0, p0, Lio/sentry/SentryOptions;->parsedDsn:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->resetValue()V

    .line 843
    iget-object v0, p0, Lio/sentry/SentryOptions;->dsn:Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    invoke-static {v0, v1}, Lio/sentry/util/StringUtils;->calculateStringHash(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryOptions;->dsnHash:Ljava/lang/String;

    .line 844
    return-void
.end method

.method public setEnableAppStartProfiling(Z)V
    .locals 0
    .param p1, "enableAppStartProfiling"    # Z

    .line 2964
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableAppStartProfiling:Z

    .line 2965
    return-void
.end method

.method public setEnableAutoSessionTracking(Z)V
    .locals 0
    .param p1, "enableAutoSessionTracking"    # Z

    .line 1474
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableAutoSessionTracking:Z

    .line 1475
    return-void
.end method

.method public setEnableBackpressureHandling(Z)V
    .locals 0
    .param p1, "enableBackpressureHandling"    # Z

    .line 3205
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableBackpressureHandling:Z

    .line 3206
    return-void
.end method

.method public setEnableCacheTracing(Z)V
    .locals 0
    .param p1, "enableCacheTracing"    # Z

    .line 2878
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableCacheTracing:Z

    .line 2879
    return-void
.end method

.method public setEnableDatabaseTransactionTracing(Z)V
    .locals 0
    .param p1, "enableDatabaseTransactionTracing"    # Z

    .line 2860
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableDatabaseTransactionTracing:Z

    .line 2861
    return-void
.end method

.method public setEnableDeduplication(Z)V
    .locals 0
    .param p1, "enableDeduplication"    # Z

    .line 1951
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableDeduplication:Z

    .line 1952
    return-void
.end method

.method public setEnableEventSizeLimiting(Z)V
    .locals 0
    .param p1, "enableEventSizeLimiting"    # Z

    .line 1970
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableEventSizeLimiting:Z

    .line 1971
    return-void
.end method

.method public setEnableExternalConfiguration(Z)V
    .locals 0
    .param p1, "enableExternalConfiguration"    # Z

    .line 1887
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableExternalConfiguration:Z

    .line 1888
    return-void
.end method

.method public setEnableLegacyProfiling(Z)V
    .locals 0
    .param p1, "enableLegacyProfiling"    # Z

    .line 2390
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableLegacyProfiling:Z

    .line 2391
    return-void
.end method

.method public setEnablePrettySerializationOutput(Z)V
    .locals 0
    .param p1, "enablePrettySerializationOutput"    # Z

    .line 2943
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enablePrettySerializationOutput:Z

    .line 2944
    return-void
.end method

.method public setEnableQueueTracing(Z)V
    .locals 0
    .param p1, "enableQueueTracing"    # Z

    .line 2898
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableQueueTracing:Z

    .line 2899
    return-void
.end method

.method public setEnableScopePersistence(Z)V
    .locals 0
    .param p1, "enableScopePersistence"    # Z

    .line 3288
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableScopePersistence:Z

    .line 3289
    return-void
.end method

.method public setEnableScreenTracking(Z)V
    .locals 0
    .param p1, "enableScreenTracking"    # Z

    .line 3332
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableScreenTracking:Z

    .line 3333
    return-void
.end method

.method public setEnableShutdownHook(Z)V
    .locals 0
    .param p1, "enableShutdownHook"    # Z

    .line 2116
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableShutdownHook:Z

    .line 2117
    return-void
.end method

.method public setEnableSpotlight(Z)V
    .locals 0
    .param p1, "enableSpotlight"    # Z

    .line 3280
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableSpotlight:Z

    .line 3281
    return-void
.end method

.method public setEnableTimeToFullDisplayTracing(Z)V
    .locals 0
    .param p1, "enableTimeToFullDisplayTracing"    # Z

    .line 2791
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableTimeToFullDisplayTracing:Z

    .line 2792
    return-void
.end method

.method public setEnableUncaughtExceptionHandler(Z)V
    .locals 0
    .param p1, "enableUncaughtExceptionHandler"    # Z

    .line 1582
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableUncaughtExceptionHandler:Z

    .line 1583
    return-void
.end method

.method public setEnableUserInteractionBreadcrumbs(Z)V
    .locals 0
    .param p1, "enableUserInteractionBreadcrumbs"    # Z

    .line 2633
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableUserInteractionBreadcrumbs:Z

    .line 2634
    return-void
.end method

.method public setEnableUserInteractionTracing(Z)V
    .locals 0
    .param p1, "enableUserInteractionTracing"    # Z

    .line 2625
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableUserInteractionTracing:Z

    .line 2626
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 2916
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enabled:Z

    .line 2917
    return-void
.end method

.method public setEnvelopeDiskCache(Lio/sentry/cache/IEnvelopeCache;)V
    .locals 1
    .param p1, "envelopeDiskCache"    # Lio/sentry/cache/IEnvelopeCache;

    .line 1703
    nop

    .line 1704
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/sentry/transport/NoOpEnvelopeCache;->getInstance()Lio/sentry/transport/NoOpEnvelopeCache;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/sentry/SentryOptions;->envelopeDiskCache:Lio/sentry/cache/IEnvelopeCache;

    .line 1705
    return-void
.end method

.method public setEnvelopeReader(Lio/sentry/IEnvelopeReader;)V
    .locals 2
    .param p1, "envelopeReader"    # Lio/sentry/IEnvelopeReader;

    .line 962
    iget-object v0, p0, Lio/sentry/SentryOptions;->envelopeReader:Lio/sentry/util/LazyEvaluator;

    .line 963
    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/sentry/NoOpEnvelopeReader;->getInstance()Lio/sentry/NoOpEnvelopeReader;

    move-result-object v1

    .line 962
    :goto_0
    invoke-virtual {v0, v1}, Lio/sentry/util/LazyEvaluator;->setValue(Ljava/lang/Object;)V

    .line 964
    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0
    .param p1, "environment"    # Ljava/lang/String;

    .line 1233
    iput-object p1, p0, Lio/sentry/SentryOptions;->environment:Ljava/lang/String;

    .line 1234
    return-void
.end method

.method public setExecutorService(Lio/sentry/ISentryExecutorService;)V
    .locals 0
    .param p1, "executorService"    # Lio/sentry/ISentryExecutorService;

    .line 1622
    if-eqz p1, :cond_0

    .line 1623
    iput-object p1, p0, Lio/sentry/SentryOptions;->executorService:Lio/sentry/ISentryExecutorService;

    .line 1625
    :cond_0
    return-void
.end method

.method public setFatalLogger(Lio/sentry/ILogger;)V
    .locals 1
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 900
    if-nez p1, :cond_0

    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lio/sentry/SentryOptions;->fatalLogger:Lio/sentry/ILogger;

    .line 901
    return-void
.end method

.method public setFeedbackOptions(Lio/sentry/SentryFeedbackOptions;)V
    .locals 0
    .param p1, "feedbackOptions"    # Lio/sentry/SentryFeedbackOptions;

    .line 3424
    iput-object p1, p0, Lio/sentry/SentryOptions;->feedbackOptions:Lio/sentry/SentryFeedbackOptions;

    .line 3425
    return-void
.end method

.method public setFlushTimeoutMillis(J)V
    .locals 0
    .param p1, "flushTimeoutMillis"    # J

    .line 1564
    iput-wide p1, p0, Lio/sentry/SentryOptions;->flushTimeoutMillis:J

    .line 1565
    return-void
.end method

.method public setForceInit(Z)V
    .locals 0
    .param p1, "forceInit"    # Z

    .line 3363
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->forceInit:Z

    .line 3364
    return-void
.end method

.method public setFullyDisplayedReporter(Lio/sentry/FullyDisplayedReporter;)V
    .locals 0
    .param p1, "fullyDisplayedReporter"    # Lio/sentry/FullyDisplayedReporter;

    .line 2808
    iput-object p1, p0, Lio/sentry/SentryOptions;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    .line 2809
    return-void
.end method

.method public setGestureTargetLocators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/internal/gestures/GestureTargetLocator;",
            ">;)V"
        }
    .end annotation

    .line 2722
    .local p1, "locators":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/gestures/GestureTargetLocator;>;"
    iget-object v0, p0, Lio/sentry/SentryOptions;->gestureTargetLocators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2723
    iget-object v0, p0, Lio/sentry/SentryOptions;->gestureTargetLocators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2724
    return-void
.end method

.method public setGlobalHubMode(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "globalHubMode"    # Ljava/lang/Boolean;

    .line 3384
    iput-object p1, p0, Lio/sentry/SentryOptions;->globalHubMode:Ljava/lang/Boolean;

    .line 3385
    return-void
.end method

.method public setIdleTimeout(Ljava/lang/Long;)V
    .locals 0
    .param p1, "idleTimeout"    # Ljava/lang/Long;

    .line 2593
    iput-object p1, p0, Lio/sentry/SentryOptions;->idleTimeout:Ljava/lang/Long;

    .line 2594
    return-void
.end method

.method public setIgnoredCheckIns(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3054
    .local p1, "ignoredCheckIns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 3055
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    goto :goto_1

    .line 3057
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3058
    .local v0, "filteredIgnoredCheckIns":Ljava/util/List;, "Ljava/util/List<Lio/sentry/FilterString;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3059
    .local v2, "slug":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3060
    new-instance v3, Lio/sentry/FilterString;

    invoke-direct {v3, v2}, Lio/sentry/FilterString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3062
    .end local v2    # "slug":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 3064
    :cond_2
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    .line 3066
    .end local v0    # "filteredIgnoredCheckIns":Ljava/util/List;, "Ljava/util/List<Lio/sentry/FilterString;>;"
    :goto_1
    return-void
.end method

.method public setIgnoredErrors(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2053
    .local p1, "ignoredErrors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 2054
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredErrors:Ljava/util/List;

    goto :goto_1

    .line 2056
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2057
    .local v0, "patterns":Ljava/util/List;, "Ljava/util/List<Lio/sentry/FilterString;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2058
    .local v2, "pattern":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2059
    new-instance v3, Lio/sentry/FilterString;

    invoke-direct {v3, v2}, Lio/sentry/FilterString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2061
    .end local v2    # "pattern":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 2063
    :cond_2
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredErrors:Ljava/util/List;

    .line 2065
    .end local v0    # "patterns":Ljava/util/List;, "Ljava/util/List<Lio/sentry/FilterString;>;"
    :goto_1
    return-void
.end method

.method public setIgnoredSpanOrigins(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3009
    .local p1, "ignoredSpanOrigins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 3010
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredSpanOrigins:Ljava/util/List;

    goto :goto_1

    .line 3012
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3013
    .local v0, "filtered":Ljava/util/List;, "Ljava/util/List<Lio/sentry/FilterString;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3014
    .local v2, "origin":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3015
    new-instance v3, Lio/sentry/FilterString;

    invoke-direct {v3, v2}, Lio/sentry/FilterString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3017
    .end local v2    # "origin":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 3019
    :cond_2
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredSpanOrigins:Ljava/util/List;

    .line 3021
    .end local v0    # "filtered":Ljava/util/List;, "Ljava/util/List<Lio/sentry/FilterString;>;"
    :goto_1
    return-void
.end method

.method public setIgnoredTransactions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3100
    .local p1, "ignoredTransactions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 3101
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredTransactions:Ljava/util/List;

    goto :goto_1

    .line 3103
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3104
    .local v0, "filtered":Ljava/util/List;, "Ljava/util/List<Lio/sentry/FilterString;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3105
    .local v2, "transactionName":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3106
    new-instance v3, Lio/sentry/FilterString;

    invoke-direct {v3, v2}, Lio/sentry/FilterString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3108
    .end local v2    # "transactionName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 3110
    :cond_2
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredTransactions:Ljava/util/List;

    .line 3112
    .end local v0    # "filtered":Ljava/util/List;, "Ljava/util/List<Lio/sentry/FilterString;>;"
    :goto_1
    return-void
.end method

.method public setInitPriority(Lio/sentry/InitPriority;)V
    .locals 0
    .param p1, "initPriority"    # Lio/sentry/InitPriority;

    .line 3345
    iput-object p1, p0, Lio/sentry/SentryOptions;->initPriority:Lio/sentry/InitPriority;

    .line 3346
    return-void
.end method

.method public setInstrumenter(Lio/sentry/Instrumenter;)V
    .locals 0
    .param p1, "instrumenter"    # Lio/sentry/Instrumenter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2650
    iput-object p1, p0, Lio/sentry/SentryOptions;->instrumenter:Lio/sentry/Instrumenter;

    .line 2651
    return-void
.end method

.method public setLogger(Lio/sentry/ILogger;)V
    .locals 1
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 880
    if-nez p1, :cond_0

    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/sentry/DiagnosticLogger;

    invoke-direct {v0, p0, p1}, Lio/sentry/DiagnosticLogger;-><init>(Lio/sentry/SentryOptions;Lio/sentry/ILogger;)V

    :goto_0
    iput-object v0, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    .line 881
    return-void
.end method

.method public setLogs(Lio/sentry/SentryOptions$Logs;)V
    .locals 0
    .param p1, "logs"    # Lio/sentry/SentryOptions$Logs;

    .line 3972
    iput-object p1, p0, Lio/sentry/SentryOptions;->logs:Lio/sentry/SentryOptions$Logs;

    .line 3973
    return-void
.end method

.method public setMaxAttachmentSize(J)V
    .locals 0
    .param p1, "maxAttachmentSize"    # J

    .line 1933
    iput-wide p1, p0, Lio/sentry/SentryOptions;->maxAttachmentSize:J

    .line 1934
    return-void
.end method

.method public setMaxBreadcrumbs(I)V
    .locals 0
    .param p1, "maxBreadcrumbs"    # I

    .line 1179
    iput p1, p0, Lio/sentry/SentryOptions;->maxBreadcrumbs:I

    .line 1180
    return-void
.end method

.method public setMaxCacheItems(I)V
    .locals 0
    .param p1, "maxCacheItems"    # I

    .line 2134
    iput p1, p0, Lio/sentry/SentryOptions;->maxCacheItems:I

    .line 2135
    return-void
.end method

.method public setMaxDepth(I)V
    .locals 0
    .param p1, "maxDepth"    # I

    .line 954
    iput p1, p0, Lio/sentry/SentryOptions;->maxDepth:I

    .line 955
    return-void
.end method

.method public setMaxFeatureFlags(I)V
    .locals 0
    .param p1, "maxFeatureFlags"    # I

    .line 1197
    iput p1, p0, Lio/sentry/SentryOptions;->maxFeatureFlags:I

    .line 1198
    return-void
.end method

.method public setMaxQueueSize(I)V
    .locals 0
    .param p1, "maxQueueSize"    # I

    .line 1722
    if-lez p1, :cond_0

    .line 1723
    iput p1, p0, Lio/sentry/SentryOptions;->maxQueueSize:I

    .line 1725
    :cond_0
    return-void
.end method

.method public setMaxRequestBodySize(Lio/sentry/SentryOptions$RequestSize;)V
    .locals 0
    .param p1, "maxRequestBodySize"    # Lio/sentry/SentryOptions$RequestSize;

    .line 2142
    iput-object p1, p0, Lio/sentry/SentryOptions;->maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

    .line 2143
    return-void
.end method

.method public setMaxSpans(I)V
    .locals 0
    .param p1, "maxSpans"    # I

    .line 2098
    iput p1, p0, Lio/sentry/SentryOptions;->maxSpans:I

    .line 2099
    return-void
.end method

.method public setMaxTraceFileSize(J)V
    .locals 0
    .param p1, "maxTraceFileSize"    # J

    .line 2187
    iput-wide p1, p0, Lio/sentry/SentryOptions;->maxTraceFileSize:J

    .line 2188
    return-void
.end method

.method public setMetrics(Lio/sentry/SentryOptions$Metrics;)V
    .locals 0
    .param p1, "metrics"    # Lio/sentry/SentryOptions$Metrics;

    .line 3980
    iput-object p1, p0, Lio/sentry/SentryOptions;->metrics:Lio/sentry/SentryOptions$Metrics;

    .line 3981
    return-void
.end method

.method public setModulesLoader(Lio/sentry/internal/modules/IModulesLoader;)V
    .locals 1
    .param p1, "modulesLoader"    # Lio/sentry/internal/modules/IModulesLoader;

    .line 2685
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/sentry/internal/modules/NoOpModulesLoader;->getInstance()Lio/sentry/internal/modules/NoOpModulesLoader;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/sentry/SentryOptions;->modulesLoader:Lio/sentry/internal/modules/IModulesLoader;

    .line 2686
    return-void
.end method

.method public setOnDiscard(Lio/sentry/SentryOptions$OnDiscardCallback;)V
    .locals 0
    .param p1, "onDiscard"    # Lio/sentry/SentryOptions$OnDiscardCallback;

    .line 1108
    iput-object p1, p0, Lio/sentry/SentryOptions;->onDiscard:Lio/sentry/SentryOptions$OnDiscardCallback;

    .line 1109
    return-void
.end method

.method public setOnOversizedEvent(Lio/sentry/SentryOptions$OnOversizedEventCallback;)V
    .locals 0
    .param p1, "onOversizedEvent"    # Lio/sentry/SentryOptions$OnOversizedEventCallback;

    .line 1989
    iput-object p1, p0, Lio/sentry/SentryOptions;->onOversizedEvent:Lio/sentry/SentryOptions$OnOversizedEventCallback;

    .line 1990
    return-void
.end method

.method public setOpenTelemetryMode(Lio/sentry/SentryOpenTelemetryMode;)V
    .locals 0
    .param p1, "openTelemetryMode"    # Lio/sentry/SentryOpenTelemetryMode;

    .line 3403
    iput-object p1, p0, Lio/sentry/SentryOptions;->openTelemetryMode:Lio/sentry/SentryOpenTelemetryMode;

    .line 3404
    return-void
.end method

.method public setOrgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "orgId"    # Ljava/lang/String;

    .line 2494
    iput-object p1, p0, Lio/sentry/SentryOptions;->orgId:Ljava/lang/String;

    .line 2495
    return-void
.end method

.method public setPrintUncaughtStackTrace(Z)V
    .locals 0
    .param p1, "printUncaughtStackTrace"    # Z

    .line 1600
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->printUncaughtStackTrace:Z

    .line 1601
    return-void
.end method

.method public setProfileLifecycle(Lio/sentry/ProfileLifecycle;)V
    .locals 4
    .param p1, "profileLifecycle"    # Lio/sentry/ProfileLifecycle;

    .line 2340
    iput-object p1, p0, Lio/sentry/SentryOptions;->profileLifecycle:Lio/sentry/ProfileLifecycle;

    .line 2341
    sget-object v0, Lio/sentry/ProfileLifecycle;->TRACE:Lio/sentry/ProfileLifecycle;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2342
    iget-object v0, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Profiling lifecycle is set to TRACE but tracing is disabled. Profiling will not be started automatically."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2347
    :cond_0
    return-void
.end method

.method public setProfileSessionSampleRate(Ljava/lang/Double;)V
    .locals 3
    .param p1, "profileSessionSampleRate"    # Ljava/lang/Double;

    .line 2319
    invoke-static {p1}, Lio/sentry/util/SampleRateUtils;->isValidContinuousProfilesSampleRate(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2325
    iput-object p1, p0, Lio/sentry/SentryOptions;->profileSessionSampleRate:Ljava/lang/Double;

    .line 2326
    return-void

    .line 2320
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid. Use values between 0.0 and 1.0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProfilerConverter(Lio/sentry/IProfileConverter;)V
    .locals 0
    .param p1, "profilerConverter"    # Lio/sentry/IProfileConverter;

    .line 714
    iput-object p1, p0, Lio/sentry/SentryOptions;->profilerConverter:Lio/sentry/IProfileConverter;

    .line 715
    return-void
.end method

.method public setProfilesSampleRate(Ljava/lang/Double;)V
    .locals 3
    .param p1, "profilesSampleRate"    # Ljava/lang/Double;

    .line 2293
    invoke-static {p1}, Lio/sentry/util/SampleRateUtils;->isValidProfilesSampleRate(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2299
    iput-object p1, p0, Lio/sentry/SentryOptions;->profilesSampleRate:Ljava/lang/Double;

    .line 2300
    return-void

    .line 2294
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid. Use null to disable or values between 0.0 and 1.0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProfilesSampler(Lio/sentry/SentryOptions$ProfilesSamplerCallback;)V
    .locals 0
    .param p1, "profilesSampler"    # Lio/sentry/SentryOptions$ProfilesSamplerCallback;

    .line 2273
    iput-object p1, p0, Lio/sentry/SentryOptions;->profilesSampler:Lio/sentry/SentryOptions$ProfilesSamplerCallback;

    .line 2274
    return-void
.end method

.method public setProfilingTracesDirPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "profilingTracesDirPath"    # Ljava/lang/String;

    .line 2433
    iput-object p1, p0, Lio/sentry/SentryOptions;->profilingTracesDirPath:Ljava/lang/String;

    .line 2434
    return-void
.end method

.method public setProfilingTracesHz(I)V
    .locals 0
    .param p1, "profilingTracesHz"    # I

    .line 3232
    iput p1, p0, Lio/sentry/SentryOptions;->profilingTracesHz:I

    .line 3233
    return-void
.end method

.method public setProguardUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "proguardUuid"    # Ljava/lang/String;

    .line 2532
    iput-object p1, p0, Lio/sentry/SentryOptions;->proguardUuid:Ljava/lang/String;

    .line 2533
    return-void
.end method

.method public setPropagateTraceparent(Z)V
    .locals 0
    .param p1, "propagateTraceparent"    # Z

    .line 2478
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->propagateTraceparent:Z

    .line 2479
    return-void
.end method

.method public setProxy(Lio/sentry/SentryOptions$Proxy;)V
    .locals 0
    .param p1, "proxy"    # Lio/sentry/SentryOptions$Proxy;

    .line 1251
    iput-object p1, p0, Lio/sentry/SentryOptions;->proxy:Lio/sentry/SentryOptions$Proxy;

    .line 1252
    return-void
.end method

.method public setReadTimeoutMillis(I)V
    .locals 0
    .param p1, "readTimeoutMillis"    # I

    .line 1685
    iput p1, p0, Lio/sentry/SentryOptions;->readTimeoutMillis:I

    .line 1686
    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 0
    .param p1, "release"    # Ljava/lang/String;

    .line 1215
    iput-object p1, p0, Lio/sentry/SentryOptions;->release:Ljava/lang/String;

    .line 1216
    return-void
.end method

.method public setReplayController(Lio/sentry/ReplayController;)V
    .locals 1
    .param p1, "replayController"    # Lio/sentry/ReplayController;

    .line 3310
    nop

    .line 3311
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/sentry/NoOpReplayController;->getInstance()Lio/sentry/NoOpReplayController;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/sentry/SentryOptions;->replayController:Lio/sentry/ReplayController;

    .line 3312
    return-void
.end method

.method public setSampleRate(Ljava/lang/Double;)V
    .locals 3
    .param p1, "sampleRate"    # Ljava/lang/Double;

    .line 1269
    invoke-static {p1}, Lio/sentry/util/SampleRateUtils;->isValidSampleRate(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1275
    iput-object p1, p0, Lio/sentry/SentryOptions;->sampleRate:Ljava/lang/Double;

    .line 1276
    return-void

    .line 1270
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid. Use null to disable or values >= 0.0 and <= 1.0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScopesStorageFactory(Lio/sentry/IScopesStorageFactory;)V
    .locals 0
    .param p1, "scopesStorageFactory"    # Lio/sentry/IScopesStorageFactory;

    .line 3962
    iput-object p1, p0, Lio/sentry/SentryOptions;->scopesStorageFactory:Lio/sentry/IScopesStorageFactory;

    .line 3963
    return-void
.end method

.method public setSdkVersion(Lio/sentry/protocol/SdkVersion;)V
    .locals 2
    .param p1, "sdkVersion"    # Lio/sentry/protocol/SdkVersion;

    .line 1761
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    .line 1762
    .local v0, "replaySdkVersion":Lio/sentry/protocol/SdkVersion;
    iget-object v1, p0, Lio/sentry/SentryOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/sentry/SentryOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    .line 1764
    invoke-virtual {v1, v0}, Lio/sentry/protocol/SdkVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1766
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/sentry/SentryReplayOptions;->setSdkVersion(Lio/sentry/protocol/SdkVersion;)V

    .line 1768
    :cond_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    .line 1769
    return-void
.end method

.method public setSendClientReports(Z)V
    .locals 1
    .param p1, "sendClientReports"    # Z

    .line 2611
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->sendClientReports:Z

    .line 2613
    if-eqz p1, :cond_0

    .line 2614
    new-instance v0, Lio/sentry/clientreport/ClientReportRecorder;

    invoke-direct {v0, p0}, Lio/sentry/clientreport/ClientReportRecorder;-><init>(Lio/sentry/SentryOptions;)V

    iput-object v0, p0, Lio/sentry/SentryOptions;->clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

    goto :goto_0

    .line 2616
    :cond_0
    new-instance v0, Lio/sentry/clientreport/NoOpClientReportRecorder;

    invoke-direct {v0}, Lio/sentry/clientreport/NoOpClientReportRecorder;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryOptions;->clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

    .line 2618
    :goto_0
    return-void
.end method

.method public setSendDefaultPii(Z)V
    .locals 0
    .param p1, "sendDefaultPii"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1790
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->sendDefaultPii:Z

    .line 1791
    return-void
.end method

.method public setSendModules(Z)V
    .locals 0
    .param p1, "sendModules"    # Z

    .line 2973
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->sendModules:Z

    .line 2974
    return-void
.end method

.method public setSentryClientName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sentryClientName"    # Ljava/lang/String;

    .line 999
    iput-object p1, p0, Lio/sentry/SentryOptions;->sentryClientName:Ljava/lang/String;

    .line 1000
    return-void
.end method

.method public setSerializer(Lio/sentry/ISerializer;)V
    .locals 2
    .param p1, "serializer"    # Lio/sentry/ISerializer;

    .line 936
    iget-object v0, p0, Lio/sentry/SentryOptions;->serializer:Lio/sentry/util/LazyEvaluator;

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/sentry/NoOpSerializer;->getInstance()Lio/sentry/NoOpSerializer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lio/sentry/util/LazyEvaluator;->setValue(Ljava/lang/Object;)V

    .line 937
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverName"    # Ljava/lang/String;

    .line 1492
    iput-object p1, p0, Lio/sentry/SentryOptions;->serverName:Ljava/lang/String;

    .line 1493
    return-void
.end method

.method public setSessionFlushTimeoutMillis(J)V
    .locals 0
    .param p1, "sessionFlushTimeoutMillis"    # J

    .line 3247
    iput-wide p1, p0, Lio/sentry/SentryOptions;->sessionFlushTimeoutMillis:J

    .line 3248
    return-void
.end method

.method public setSessionReplay(Lio/sentry/SentryReplayOptions;)V
    .locals 0
    .param p1, "sessionReplayOptions"    # Lio/sentry/SentryReplayOptions;

    .line 3416
    iput-object p1, p0, Lio/sentry/SentryOptions;->sessionReplay:Lio/sentry/SentryReplayOptions;

    .line 3417
    return-void
.end method

.method public setSessionTrackingIntervalMillis(J)V
    .locals 0
    .param p1, "sessionTrackingIntervalMillis"    # J

    .line 1528
    iput-wide p1, p0, Lio/sentry/SentryOptions;->sessionTrackingIntervalMillis:J

    .line 1529
    return-void
.end method

.method public setShutdownTimeoutMillis(J)V
    .locals 0
    .param p1, "shutdownTimeoutMillis"    # J

    .line 981
    iput-wide p1, p0, Lio/sentry/SentryOptions;->shutdownTimeoutMillis:J

    .line 982
    return-void
.end method

.method public setSocketTagger(Lio/sentry/ISocketTagger;)V
    .locals 1
    .param p1, "socketTagger"    # Lio/sentry/ISocketTagger;

    .line 3452
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/sentry/NoOpSocketTagger;->getInstance()Lio/sentry/ISocketTagger;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/sentry/SentryOptions;->socketTagger:Lio/sentry/ISocketTagger;

    .line 3453
    return-void
.end method

.method public setSpanFactory(Lio/sentry/ISpanFactory;)V
    .locals 0
    .param p1, "spanFactory"    # Lio/sentry/ISpanFactory;

    .line 3941
    iput-object p1, p0, Lio/sentry/SentryOptions;->spanFactory:Lio/sentry/ISpanFactory;

    .line 3942
    return-void
.end method

.method public setSpotlightConnectionUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "spotlightConnectionUrl"    # Ljava/lang/String;

    .line 3270
    iput-object p1, p0, Lio/sentry/SentryOptions;->spotlightConnectionUrl:Ljava/lang/String;

    .line 3271
    return-void
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 1751
    iput-object p1, p0, Lio/sentry/SentryOptions;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 1752
    return-void
.end method

.method public setStartProfilerOnAppStart(Z)V
    .locals 0
    .param p1, "startProfilerOnAppStart"    # Z

    .line 2360
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->startProfilerOnAppStart:Z

    .line 2361
    return-void
.end method

.method public setStrictTraceContinuation(Z)V
    .locals 0
    .param p1, "strictTraceContinuation"    # Z

    .line 2486
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->strictTraceContinuation:Z

    .line 2487
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1906
    if-nez p1, :cond_0

    .line 1907
    return-void

    .line 1909
    :cond_0
    if-nez p2, :cond_1

    .line 1910
    iget-object v0, p0, Lio/sentry/SentryOptions;->tags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1912
    :cond_1
    iget-object v0, p0, Lio/sentry/SentryOptions;->tags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1914
    :goto_0
    return-void
.end method

.method public setThreadChecker(Lio/sentry/util/thread/IThreadChecker;)V
    .locals 0
    .param p1, "threadChecker"    # Lio/sentry/util/thread/IThreadChecker;

    .line 2752
    iput-object p1, p0, Lio/sentry/SentryOptions;->threadChecker:Lio/sentry/util/thread/IThreadChecker;

    .line 2753
    return-void
.end method

.method public setTimerExecutorService(Lio/sentry/ISentryExecutorService;)V
    .locals 0
    .param p1, "timerExecutorService"    # Lio/sentry/ISentryExecutorService;

    .line 1647
    if-eqz p1, :cond_0

    .line 1648
    iput-object p1, p0, Lio/sentry/SentryOptions;->timerExecutorService:Lio/sentry/ISentryExecutorService;

    .line 1650
    :cond_0
    return-void
.end method

.method public setTraceOptionsRequests(Z)V
    .locals 0
    .param p1, "traceOptionsRequests"    # Z

    .line 2842
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->traceOptionsRequests:Z

    .line 2843
    return-void
.end method

.method public setTracePropagationTargets(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2449
    .local p1, "tracePropagationTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 2450
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    goto :goto_1

    .line 2452
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2453
    .local v0, "filteredTracePropagationTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2454
    .local v2, "target":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2455
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2457
    .end local v2    # "target":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 2459
    :cond_2
    iput-object v0, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    .line 2461
    .end local v0    # "filteredTracePropagationTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-void
.end method

.method public setTraceSampling(Z)V
    .locals 0
    .param p1, "traceSampling"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2169
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->traceSampling:Z

    .line 2170
    return-void
.end method

.method public setTracesSampleRate(Ljava/lang/Double;)V
    .locals 3
    .param p1, "tracesSampleRate"    # Ljava/lang/Double;

    .line 1293
    invoke-static {p1}, Lio/sentry/util/SampleRateUtils;->isValidTracesSampleRate(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1299
    iput-object p1, p0, Lio/sentry/SentryOptions;->tracesSampleRate:Ljava/lang/Double;

    .line 1300
    return-void

    .line 1294
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid. Use null to disable or values between 0.0 and 1.0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTracesSampler(Lio/sentry/SentryOptions$TracesSamplerCallback;)V
    .locals 0
    .param p1, "tracesSampler"    # Lio/sentry/SentryOptions$TracesSamplerCallback;

    .line 1317
    iput-object p1, p0, Lio/sentry/SentryOptions;->tracesSampler:Lio/sentry/SentryOptions$TracesSamplerCallback;

    .line 1318
    return-void
.end method

.method public setTransactionProfiler(Lio/sentry/ITransactionProfiler;)V
    .locals 2
    .param p1, "transactionProfiler"    # Lio/sentry/ITransactionProfiler;

    .line 2207
    iget-object v0, p0, Lio/sentry/SentryOptions;->transactionProfiler:Lio/sentry/ITransactionProfiler;

    invoke-static {}, Lio/sentry/NoOpTransactionProfiler;->getInstance()Lio/sentry/NoOpTransactionProfiler;

    move-result-object v1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 2209
    iput-object p1, p0, Lio/sentry/SentryOptions;->transactionProfiler:Lio/sentry/ITransactionProfiler;

    .line 2211
    :cond_0
    return-void
.end method

.method public setTransportFactory(Lio/sentry/ITransportFactory;)V
    .locals 1
    .param p1, "transportFactory"    # Lio/sentry/ITransportFactory;

    .line 1383
    nop

    .line 1384
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/sentry/NoOpTransportFactory;->getInstance()Lio/sentry/NoOpTransportFactory;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/sentry/SentryOptions;->transportFactory:Lio/sentry/ITransportFactory;

    .line 1385
    return-void
.end method

.method public setTransportGate(Lio/sentry/transport/ITransportGate;)V
    .locals 1
    .param p1, "transportGate"    # Lio/sentry/transport/ITransportGate;

    .line 1420
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/sentry/transport/NoOpTransportGate;->getInstance()Lio/sentry/transport/NoOpTransportGate;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/sentry/SentryOptions;->transportGate:Lio/sentry/transport/ITransportGate;

    .line 1421
    return-void
.end method

.method public setVersionDetector(Lio/sentry/IVersionDetector;)V
    .locals 0
    .param p1, "versionDetector"    # Lio/sentry/IVersionDetector;

    .line 3216
    iput-object p1, p0, Lio/sentry/SentryOptions;->versionDetector:Lio/sentry/IVersionDetector;

    .line 3217
    return-void
.end method

.method public setViewHierarchyExporters(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;",
            ">;)V"
        }
    .end annotation

    .line 2743
    .local p1, "exporters":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;>;"
    iget-object v0, p0, Lio/sentry/SentryOptions;->viewHierarchyExporters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2744
    iget-object v0, p0, Lio/sentry/SentryOptions;->viewHierarchyExporters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2745
    return-void
.end method
