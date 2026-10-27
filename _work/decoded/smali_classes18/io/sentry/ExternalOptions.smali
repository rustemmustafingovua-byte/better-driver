.class public final Lio/sentry/ExternalOptions;
.super Ljava/lang/Object;
.source "ExternalOptions.java"


# static fields
.field private static final PROXY_PORT_DEFAULT:Ljava/lang/String; = "80"


# instance fields
.field private bundleIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private captureOpenTelemetryEvents:Ljava/lang/Boolean;

.field private final contextTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cron:Lio/sentry/SentryOptions$Cron;

.field private dataCollection:Lio/sentry/DataCollection;

.field private debug:Ljava/lang/Boolean;

.field private dist:Ljava/lang/String;

.field private dsn:Ljava/lang/String;

.field private enableBackpressureHandling:Ljava/lang/Boolean;

.field private enableCacheTracing:Ljava/lang/Boolean;

.field private enableDatabaseTransactionTracing:Ljava/lang/Boolean;

.field private enableDeduplication:Ljava/lang/Boolean;

.field private enableLogs:Ljava/lang/Boolean;

.field private enableMetrics:Ljava/lang/Boolean;

.field private enablePrettySerializationOutput:Ljava/lang/Boolean;

.field private enableQueueTracing:Ljava/lang/Boolean;

.field private enableSpotlight:Ljava/lang/Boolean;

.field private enableUncaughtExceptionHandler:Ljava/lang/Boolean;

.field private enabled:Ljava/lang/Boolean;

.field private environment:Ljava/lang/String;

.field private forceInit:Ljava/lang/Boolean;

.field private globalHubMode:Ljava/lang/Boolean;

.field private idleTimeout:Ljava/lang/Long;

.field private ignoredCheckIns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ignoredErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

.field private ignoredTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

.field private maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

.field private orgId:Ljava/lang/String;

.field private printUncaughtStackTrace:Ljava/lang/Boolean;

.field private profileLifecycle:Lio/sentry/ProfileLifecycle;

.field private profileSessionSampleRate:Ljava/lang/Double;

.field private profilesSampleRate:Ljava/lang/Double;

.field private profilingTracesDirPath:Ljava/lang/String;

.field private proguardUuid:Ljava/lang/String;

.field private proxy:Lio/sentry/SentryOptions$Proxy;

.field private release:Ljava/lang/String;

.field private sampleRate:Ljava/lang/Double;

.field private sendClientReports:Ljava/lang/Boolean;

.field private sendDefaultPii:Ljava/lang/Boolean;

.field private sendModules:Ljava/lang/Boolean;

.field private serverName:Ljava/lang/String;

.field private sessionFlushTimeoutMillis:Ljava/lang/Long;

.field private shutdownTimeoutMillis:Ljava/lang/Long;

.field private spotlightConnectionUrl:Ljava/lang/String;

.field private strictTraceContinuation:Ljava/lang/Boolean;

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

.field private tracePropagationTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tracesSampleRate:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/ExternalOptions;->tags:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/ExternalOptions;->inAppExcludes:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/ExternalOptions;->inAppIncludes:Ljava/util/List;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/ExternalOptions;->tracePropagationTargets:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/ExternalOptions;->contextTags:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/sentry/ExternalOptions;->ignoredExceptionsForType:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/sentry/ExternalOptions;->bundleIds:Ljava/util/Set;

    return-void
.end method

.method public static from(Lio/sentry/config/PropertiesProvider;Lio/sentry/ILogger;)Lio/sentry/ExternalOptions;
    .locals 17
    .param p0, "propertiesProvider"    # Lio/sentry/config/PropertiesProvider;
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 79
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Lio/sentry/ExternalOptions;

    invoke-direct {v0}, Lio/sentry/ExternalOptions;-><init>()V

    move-object v3, v0

    .line 80
    .local v3, "options":Lio/sentry/ExternalOptions;
    const-string v0, "dsn"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setDsn(Ljava/lang/String;)V

    .line 81
    const-string v0, "environment"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setEnvironment(Ljava/lang/String;)V

    .line 82
    const-string v0, "release"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setRelease(Ljava/lang/String;)V

    .line 83
    const-string v0, "dist"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setDist(Ljava/lang/String;)V

    .line 84
    const-string v0, "servername"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setServerName(Ljava/lang/String;)V

    .line 85
    nop

    .line 86
    const-string v0, "uncaught.handler.enabled"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 85
    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setEnableUncaughtExceptionHandler(Ljava/lang/Boolean;)V

    .line 87
    nop

    .line 88
    const-string v0, "uncaught.handler.print-stacktrace"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 87
    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setPrintUncaughtStackTrace(Ljava/lang/Boolean;)V

    .line 89
    const-string v0, "sample-rate"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getDoubleProperty(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setSampleRate(Ljava/lang/Double;)V

    .line 90
    const-string v0, "traces-sample-rate"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getDoubleProperty(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setTracesSampleRate(Ljava/lang/Double;)V

    .line 91
    const-string v0, "profiles-sample-rate"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getDoubleProperty(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setProfilesSampleRate(Ljava/lang/Double;)V

    .line 92
    const-string v0, "debug"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setDebug(Ljava/lang/Boolean;)V

    .line 93
    const-string v0, "enable-deduplication"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setEnableDeduplication(Ljava/lang/Boolean;)V

    .line 94
    const-string v0, "send-client-reports"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setSendClientReports(Ljava/lang/Boolean;)V

    .line 95
    const-string v0, "force-init"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setForceInit(Ljava/lang/Boolean;)V

    .line 96
    const-string v0, "max-request-body-size"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "maxRequestBodySize":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 98
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 99
    invoke-virtual {v4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/SentryOptions$RequestSize;->valueOf(Ljava/lang/String;)Lio/sentry/SentryOptions$RequestSize;

    move-result-object v0

    .line 98
    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setMaxRequestBodySize(Lio/sentry/SentryOptions$RequestSize;)V

    .line 101
    :cond_0
    const-string v0, "tags"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 102
    .local v5, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 103
    .local v6, "tag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lio/sentry/ExternalOptions;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .end local v6    # "tag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 106
    :cond_1
    const-string v0, "proxy.host"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "proxyHost":Ljava/lang/String;
    const-string v0, "proxy.user"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, "proxyUser":Ljava/lang/String;
    const-string v0, "proxy.pass"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, "proxyPass":Ljava/lang/String;
    const-string v0, "proxy.port"

    const-string v9, "80"

    invoke-interface {v1, v0, v9}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 111
    .local v9, "proxyPort":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 112
    new-instance v0, Lio/sentry/SentryOptions$Proxy;

    invoke-direct {v0, v6, v9, v7, v8}, Lio/sentry/SentryOptions$Proxy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setProxy(Lio/sentry/SentryOptions$Proxy;)V

    .line 115
    :cond_2
    const-string v0, "in-app-includes"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 116
    .local v10, "inAppInclude":Ljava/lang/String;
    invoke-virtual {v3, v10}, Lio/sentry/ExternalOptions;->addInAppInclude(Ljava/lang/String;)V

    .line 117
    .end local v10    # "inAppInclude":Ljava/lang/String;
    goto :goto_1

    .line 118
    :cond_3
    const-string v0, "in-app-excludes"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 119
    .local v10, "inAppExclude":Ljava/lang/String;
    invoke-virtual {v3, v10}, Lio/sentry/ExternalOptions;->addInAppExclude(Ljava/lang/String;)V

    .line 120
    .end local v10    # "inAppExclude":Ljava/lang/String;
    goto :goto_2

    .line 122
    :cond_4
    const/4 v0, 0x0

    .line 124
    .local v0, "tracePropagationTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "trace-propagation-targets"

    invoke-interface {v1, v10}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 125
    invoke-interface {v1, v10}, Lio/sentry/config/PropertiesProvider;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 129
    :cond_5
    if-nez v0, :cond_6

    .line 130
    const-string v10, "tracing-origins"

    invoke-interface {v1, v10}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 131
    invoke-interface {v1, v10}, Lio/sentry/config/PropertiesProvider;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v10, v0

    goto :goto_3

    .line 134
    :cond_6
    move-object v10, v0

    .end local v0    # "tracePropagationTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "tracePropagationTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    if-eqz v10, :cond_7

    .line 135
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 136
    .local v11, "tracePropagationTarget":Ljava/lang/String;
    invoke-virtual {v3, v11}, Lio/sentry/ExternalOptions;->addTracePropagationTarget(Ljava/lang/String;)V

    .line 137
    .end local v11    # "tracePropagationTarget":Ljava/lang/String;
    goto :goto_4

    .line 140
    :cond_7
    const-string v0, "context-tags"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 141
    .local v11, "contextTag":Ljava/lang/String;
    invoke-virtual {v3, v11}, Lio/sentry/ExternalOptions;->addContextTag(Ljava/lang/String;)V

    .line 142
    .end local v11    # "contextTag":Ljava/lang/String;
    goto :goto_5

    .line 143
    :cond_8
    const-string v0, "proguard-uuid"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setProguardUuid(Ljava/lang/String;)V

    .line 144
    const-string v0, "bundle-ids"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 145
    .local v11, "bundleId":Ljava/lang/String;
    invoke-virtual {v3, v11}, Lio/sentry/ExternalOptions;->addBundleId(Ljava/lang/String;)V

    .line 146
    .end local v11    # "bundleId":Ljava/lang/String;
    goto :goto_6

    .line 147
    :cond_9
    const-string v0, "idle-timeout"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getLongProperty(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setIdleTimeout(Ljava/lang/Long;)V

    .line 148
    const-string v0, "shutdown-timeout-millis"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getLongProperty(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setShutdownTimeoutMillis(Ljava/lang/Long;)V

    .line 149
    nop

    .line 150
    const-string v0, "session-flush-timeout-millis"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getLongProperty(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 149
    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setSessionFlushTimeoutMillis(Ljava/lang/Long;)V

    .line 152
    const-string v0, "ignored-errors"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getListOrNull(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setIgnoredErrors(Ljava/util/List;)V

    .line 154
    const-string v0, "enabled"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setEnabled(Ljava/lang/Boolean;)V

    .line 156
    nop

    .line 157
    const-string v0, "enable-pretty-serialization-output"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 156
    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setEnablePrettySerializationOutput(Ljava/lang/Boolean;)V

    .line 159
    const-string v0, "send-modules"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setSendModules(Ljava/lang/Boolean;)V

    .line 160
    const-string v0, "send-default-pii"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setSendDefaultPii(Ljava/lang/Boolean;)V

    .line 161
    invoke-static {v1}, Lio/sentry/ExternalOptions;->parseDataCollection(Lio/sentry/config/PropertiesProvider;)Lio/sentry/DataCollection;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setDataCollection(Lio/sentry/DataCollection;)V

    .line 163
    const-string v0, "ignored-checkins"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getListOrNull(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setIgnoredCheckIns(Ljava/util/List;)V

    .line 164
    const-string v0, "ignored-transactions"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getListOrNull(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setIgnoredTransactions(Ljava/util/List;)V

    .line 166
    nop

    .line 167
    const-string v0, "enable-backpressure-handling"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 166
    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setEnableBackpressureHandling(Ljava/lang/Boolean;)V

    .line 169
    nop

    .line 170
    const-string v0, "enable-database-transaction-tracing"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 169
    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setEnableDatabaseTransactionTracing(Ljava/lang/Boolean;)V

    .line 172
    const-string v0, "enable-cache-tracing"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setEnableCacheTracing(Ljava/lang/Boolean;)V

    .line 174
    const-string v0, "enable-queue-tracing"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setEnableQueueTracing(Ljava/lang/Boolean;)V

    .line 176
    const-string v0, "global-hub-mode"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setGlobalHubMode(Ljava/lang/Boolean;)V

    .line 178
    nop

    .line 179
    const-string v0, "capture-open-telemetry-events"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 178
    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setCaptureOpenTelemetryEvents(Ljava/lang/Boolean;)V

    .line 181
    const-string v0, "logs.enabled"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setEnableLogs(Ljava/lang/Boolean;)V

    .line 183
    const-string v0, "metrics.enabled"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setEnableMetrics(Ljava/lang/Boolean;)V

    .line 186
    const-string v0, "ignored-exceptions-for-type"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 188
    .local v12, "ignoredExceptionType":Ljava/lang/String;
    :try_start_0
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 189
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v13, Ljava/lang/Throwable;

    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 190
    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->addIgnoredExceptionForType(Ljava/lang/Class;)V

    goto :goto_8

    .line 192
    :cond_a
    sget-object v13, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v14, "Skipping setting %s as ignored-exception-for-type. Reason: %s does not extend Throwable"

    filled-new-array {v12, v12}, [Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v2, v13, v14, v15}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_8
    goto :goto_9

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v13, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v14, "Skipping setting %s as ignored-exception-for-type. Reason: %s class is not found"

    filled-new-array {v12, v12}, [Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v2, v13, v14, v15}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v12    # "ignoredExceptionType":Ljava/lang/String;
    :goto_9
    goto :goto_7

    .line 207
    :cond_b
    nop

    .line 208
    const-string v0, "cron.default-checkin-margin"

    invoke-interface {v1, v0}, Lio/sentry/config/PropertiesProvider;->getLongProperty(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 209
    .local v0, "cronDefaultCheckinMargin":Ljava/lang/Long;
    nop

    .line 210
    const-string v11, "cron.default-max-runtime"

    invoke-interface {v1, v11}, Lio/sentry/config/PropertiesProvider;->getLongProperty(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 211
    .local v11, "cronDefaultMaxRuntime":Ljava/lang/Long;
    const-string v12, "cron.default-timezone"

    invoke-interface {v1, v12}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 212
    .local v12, "cronDefaultTimezone":Ljava/lang/String;
    nop

    .line 213
    const-string v13, "cron.default-failure-issue-threshold"

    invoke-interface {v1, v13}, Lio/sentry/config/PropertiesProvider;->getLongProperty(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    .line 214
    .local v13, "cronDefaultFailureIssueThreshold":Ljava/lang/Long;
    nop

    .line 215
    const-string v14, "cron.default-recovery-threshold"

    invoke-interface {v1, v14}, Lio/sentry/config/PropertiesProvider;->getLongProperty(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 217
    .local v14, "cronDefaultRecoveryThreshold":Ljava/lang/Long;
    if-nez v0, :cond_c

    if-nez v11, :cond_c

    if-nez v12, :cond_c

    if-nez v13, :cond_c

    if-eqz v14, :cond_d

    .line 222
    :cond_c
    new-instance v15, Lio/sentry/SentryOptions$Cron;

    invoke-direct {v15}, Lio/sentry/SentryOptions$Cron;-><init>()V

    .line 223
    .local v15, "cron":Lio/sentry/SentryOptions$Cron;
    invoke-virtual {v15, v0}, Lio/sentry/SentryOptions$Cron;->setDefaultCheckinMargin(Ljava/lang/Long;)V

    .line 224
    invoke-virtual {v15, v11}, Lio/sentry/SentryOptions$Cron;->setDefaultMaxRuntime(Ljava/lang/Long;)V

    .line 225
    invoke-virtual {v15, v12}, Lio/sentry/SentryOptions$Cron;->setDefaultTimezone(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v15, v13}, Lio/sentry/SentryOptions$Cron;->setDefaultFailureIssueThreshold(Ljava/lang/Long;)V

    .line 227
    invoke-virtual {v15, v14}, Lio/sentry/SentryOptions$Cron;->setDefaultRecoveryThreshold(Ljava/lang/Long;)V

    .line 229
    invoke-virtual {v3, v15}, Lio/sentry/ExternalOptions;->setCron(Lio/sentry/SentryOptions$Cron;)V

    .line 232
    .end local v15    # "cron":Lio/sentry/SentryOptions$Cron;
    :cond_d
    nop

    .line 233
    const-string v15, "enable-strict-trace-continuation"

    invoke-interface {v1, v15}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    .line 232
    invoke-virtual {v3, v15}, Lio/sentry/ExternalOptions;->setStrictTraceContinuation(Ljava/lang/Boolean;)V

    .line 234
    const-string v15, "org-id"

    invoke-interface {v1, v15}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lio/sentry/ExternalOptions;->setOrgId(Ljava/lang/String;)V

    .line 236
    const-string v15, "enable-spotlight"

    invoke-interface {v1, v15}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v3, v15}, Lio/sentry/ExternalOptions;->setEnableSpotlight(Ljava/lang/Boolean;)V

    .line 237
    const-string v15, "spotlight-connection-url"

    invoke-interface {v1, v15}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lio/sentry/ExternalOptions;->setSpotlightConnectionUrl(Ljava/lang/String;)V

    .line 238
    nop

    .line 239
    const-string v15, "profile-session-sample-rate"

    invoke-interface {v1, v15}, Lio/sentry/config/PropertiesProvider;->getDoubleProperty(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v15

    .line 238
    invoke-virtual {v3, v15}, Lio/sentry/ExternalOptions;->setProfileSessionSampleRate(Ljava/lang/Double;)V

    .line 241
    const-string v15, "profiling-traces-dir-path"

    invoke-interface {v1, v15}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lio/sentry/ExternalOptions;->setProfilingTracesDirPath(Ljava/lang/String;)V

    .line 243
    const-string v15, "profile-lifecycle"

    invoke-interface {v1, v15}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 244
    .local v15, "profileLifecycleString":Ljava/lang/String;
    if-eqz v15, :cond_e

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_e

    .line 245
    move-object/from16 v16, v0

    .end local v0    # "cronDefaultCheckinMargin":Ljava/lang/Long;
    .local v16, "cronDefaultCheckinMargin":Ljava/lang/Long;
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 246
    invoke-virtual {v15, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/ProfileLifecycle;->valueOf(Ljava/lang/String;)Lio/sentry/ProfileLifecycle;

    move-result-object v0

    .line 245
    invoke-virtual {v3, v0}, Lio/sentry/ExternalOptions;->setProfileLifecycle(Lio/sentry/ProfileLifecycle;)V

    goto :goto_a

    .line 244
    .end local v16    # "cronDefaultCheckinMargin":Ljava/lang/Long;
    .restart local v0    # "cronDefaultCheckinMargin":Ljava/lang/Long;
    :cond_e
    move-object/from16 v16, v0

    .line 249
    .end local v0    # "cronDefaultCheckinMargin":Ljava/lang/Long;
    .restart local v16    # "cronDefaultCheckinMargin":Ljava/lang/Long;
    :goto_a
    return-object v3
.end method

.method private static parseDataCollection(Lio/sentry/config/PropertiesProvider;)Lio/sentry/DataCollection;
    .locals 12
    .param p0, "propertiesProvider"    # Lio/sentry/config/PropertiesProvider;

    .line 254
    new-instance v0, Lio/sentry/DataCollection;

    invoke-direct {v0}, Lio/sentry/DataCollection;-><init>()V

    .line 256
    .local v0, "dataCollection":Lio/sentry/DataCollection;
    const-string v1, "data-collection.user-info"

    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 257
    .local v1, "userInfo":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v0, v1}, Lio/sentry/DataCollection;->setUserInfo(Ljava/lang/Boolean;)V

    .line 261
    :cond_0
    invoke-static {p0}, Lio/sentry/ExternalOptions;->parseHttpBodies(Lio/sentry/config/PropertiesProvider;)Ljava/util/Set;

    move-result-object v2

    .line 262
    .local v2, "httpBodies":Ljava/util/Set;, "Ljava/util/Set<Lio/sentry/HttpBodyType;>;"
    if-eqz v2, :cond_1

    .line 263
    invoke-virtual {v0, v2}, Lio/sentry/DataCollection;->setHttpBodies(Ljava/util/Set;)V

    .line 266
    :cond_1
    nop

    .line 267
    const-string v3, "data-collection.cookies"

    invoke-static {p0, v3}, Lio/sentry/ExternalOptions;->parseKeyValueCollectionBehavior(Lio/sentry/config/PropertiesProvider;Ljava/lang/String;)Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v3

    .line 268
    .local v3, "cookies":Lio/sentry/KeyValueCollectionBehavior;
    if-eqz v3, :cond_2

    .line 269
    invoke-virtual {v0, v3}, Lio/sentry/DataCollection;->setCookies(Lio/sentry/KeyValueCollectionBehavior;)V

    .line 272
    :cond_2
    nop

    .line 273
    const-string v4, "data-collection.http-headers.request"

    invoke-static {p0, v4}, Lio/sentry/ExternalOptions;->parseKeyValueCollectionBehavior(Lio/sentry/config/PropertiesProvider;Ljava/lang/String;)Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v4

    .line 274
    .local v4, "requestHeaders":Lio/sentry/KeyValueCollectionBehavior;
    if-eqz v4, :cond_3

    .line 275
    invoke-virtual {v0}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/sentry/DataCollection$HttpHeaders;->setRequest(Lio/sentry/KeyValueCollectionBehavior;)V

    .line 278
    :cond_3
    nop

    .line 279
    const-string v5, "data-collection.http-headers.response"

    invoke-static {p0, v5}, Lio/sentry/ExternalOptions;->parseKeyValueCollectionBehavior(Lio/sentry/config/PropertiesProvider;Ljava/lang/String;)Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v5

    .line 281
    .local v5, "responseHeaders":Lio/sentry/KeyValueCollectionBehavior;
    if-eqz v5, :cond_4

    .line 282
    invoke-virtual {v0}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v6

    invoke-virtual {v6, v5}, Lio/sentry/DataCollection$HttpHeaders;->setResponse(Lio/sentry/KeyValueCollectionBehavior;)V

    .line 285
    :cond_4
    nop

    .line 286
    const-string v6, "data-collection.url-query-params"

    invoke-static {p0, v6}, Lio/sentry/ExternalOptions;->parseKeyValueCollectionBehavior(Lio/sentry/config/PropertiesProvider;Ljava/lang/String;)Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v6

    .line 287
    .local v6, "queryParams":Lio/sentry/KeyValueCollectionBehavior;
    if-eqz v6, :cond_5

    .line 288
    invoke-virtual {v0, v6}, Lio/sentry/DataCollection;->setUrlQueryParams(Lio/sentry/KeyValueCollectionBehavior;)V

    .line 291
    :cond_5
    nop

    .line 292
    const-string v7, "data-collection.graphql.document"

    invoke-interface {p0, v7}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    .line 293
    .local v7, "graphqlDocument":Ljava/lang/Boolean;
    if-eqz v7, :cond_6

    .line 294
    invoke-virtual {v0}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v8

    invoke-virtual {v8, v7}, Lio/sentry/DataCollection$Graphql;->setDocument(Ljava/lang/Boolean;)V

    .line 297
    :cond_6
    nop

    .line 298
    const-string v8, "data-collection.graphql.variables"

    invoke-interface {p0, v8}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    .line 299
    .local v8, "graphqlVariables":Ljava/lang/Boolean;
    if-eqz v8, :cond_7

    .line 300
    invoke-virtual {v0}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v9

    invoke-virtual {v9, v8}, Lio/sentry/DataCollection$Graphql;->setVariables(Ljava/lang/Boolean;)V

    .line 303
    :cond_7
    nop

    .line 304
    const-string v9, "data-collection.database-query-data"

    invoke-interface {p0, v9}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    .line 305
    .local v9, "databaseQueryData":Ljava/lang/Boolean;
    if-eqz v9, :cond_8

    .line 306
    invoke-virtual {v0, v9}, Lio/sentry/DataCollection;->setDatabaseQueryData(Ljava/lang/Boolean;)V

    .line 309
    :cond_8
    const-string v10, "data-collection.file-paths"

    invoke-interface {p0, v10}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    .line 310
    .local v10, "filePaths":Ljava/lang/Boolean;
    if-eqz v10, :cond_9

    .line 311
    invoke-virtual {v0, v10}, Lio/sentry/DataCollection;->setFilePaths(Ljava/lang/Boolean;)V

    .line 314
    :cond_9
    invoke-virtual {v0}, Lio/sentry/DataCollection;->isExplicitlyConfigured()Z

    move-result v11

    if-eqz v11, :cond_a

    move-object v11, v0

    goto :goto_0

    :cond_a
    const/4 v11, 0x0

    :goto_0
    return-object v11
.end method

.method private static parseHttpBodies(Lio/sentry/config/PropertiesProvider;)Ljava/util/Set;
    .locals 5
    .param p0, "propertiesProvider"    # Lio/sentry/config/PropertiesProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/config/PropertiesProvider;",
            ")",
            "Ljava/util/Set<",
            "Lio/sentry/HttpBodyType;",
            ">;"
        }
    .end annotation

    .line 319
    const-string v0, "data-collection.http-bodies"

    invoke-interface {p0, v0}, Lio/sentry/config/PropertiesProvider;->getListOrNull(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 320
    .local v0, "bodyTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 321
    const/4 v1, 0x0

    return-object v1

    .line 323
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 327
    :cond_1
    const-class v1, Lio/sentry/HttpBodyType;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 328
    .local v1, "httpBodies":Ljava/util/Set;, "Ljava/util/Set<Lio/sentry/HttpBodyType;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 329
    .local v3, "bodyType":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/sentry/HttpBodyType;->valueOf(Ljava/lang/String;)Lio/sentry/HttpBodyType;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 330
    .end local v3    # "bodyType":Ljava/lang/String;
    goto :goto_0

    .line 331
    :cond_2
    return-object v1
.end method

.method private static parseKeyValueCollectionBehavior(Lio/sentry/config/PropertiesProvider;Ljava/lang/String;)Lio/sentry/KeyValueCollectionBehavior;
    .locals 4
    .param p0, "propertiesProvider"    # Lio/sentry/config/PropertiesProvider;
    .param p1, "property"    # Ljava/lang/String;

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "modeValue":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".terms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getListOrNull(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 338
    .local v1, "terms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 339
    const/4 v2, 0x0

    return-object v2

    .line 342
    :cond_0
    new-instance v2, Lio/sentry/KeyValueCollectionBehavior;

    invoke-direct {v2}, Lio/sentry/KeyValueCollectionBehavior;-><init>()V

    .line 343
    .local v2, "behavior":Lio/sentry/KeyValueCollectionBehavior;
    if-eqz v0, :cond_1

    .line 344
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/sentry/KeyValueCollectionBehavior$Mode;->valueOf(Ljava/lang/String;)Lio/sentry/KeyValueCollectionBehavior$Mode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/sentry/KeyValueCollectionBehavior;->setMode(Lio/sentry/KeyValueCollectionBehavior$Mode;)V

    .line 346
    :cond_1
    if-eqz v1, :cond_2

    .line 347
    invoke-virtual {v2, v1}, Lio/sentry/KeyValueCollectionBehavior;->setTerms(Ljava/util/List;)V

    .line 349
    :cond_2
    return-object v2
.end method


# virtual methods
.method public addBundleId(Ljava/lang/String;)V
    .locals 1
    .param p1, "bundleId"    # Ljava/lang/String;

    .line 571
    iget-object v0, p0, Lio/sentry/ExternalOptions;->bundleIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 572
    return-void
.end method

.method public addContextTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "contextTag"    # Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lio/sentry/ExternalOptions;->contextTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
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

    .line 511
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    iget-object v0, p0, Lio/sentry/ExternalOptions;->ignoredExceptionsForType:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 512
    return-void
.end method

.method public addInAppExclude(Ljava/lang/String;)V
    .locals 1
    .param p1, "exclude"    # Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lio/sentry/ExternalOptions;->inAppExcludes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    return-void
.end method

.method public addInAppInclude(Ljava/lang/String;)V
    .locals 1
    .param p1, "include"    # Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lio/sentry/ExternalOptions;->inAppIncludes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    return-void
.end method

.method public addTracePropagationTarget(Ljava/lang/String;)V
    .locals 1
    .param p1, "tracePropagationTarget"    # Ljava/lang/String;

    .line 498
    iget-object v0, p0, Lio/sentry/ExternalOptions;->tracePropagationTargets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/ExternalOptions;->tracePropagationTargets:Ljava/util/List;

    .line 501
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 502
    iget-object v0, p0, Lio/sentry/ExternalOptions;->tracePropagationTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_1
    return-void
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

    .line 567
    iget-object v0, p0, Lio/sentry/ExternalOptions;->bundleIds:Ljava/util/Set;

    return-object v0
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

    .line 474
    iget-object v0, p0, Lio/sentry/ExternalOptions;->contextTags:Ljava/util/List;

    return-object v0
.end method

.method public getCron()Lio/sentry/SentryOptions$Cron;
    .locals 1

    .line 684
    iget-object v0, p0, Lio/sentry/ExternalOptions;->cron:Lio/sentry/SentryOptions$Cron;

    return-object v0
.end method

.method public getDataCollection()Lio/sentry/DataCollection;
    .locals 1

    .line 608
    iget-object v0, p0, Lio/sentry/ExternalOptions;->dataCollection:Lio/sentry/DataCollection;

    return-object v0
.end method

.method public getDebug()Ljava/lang/Boolean;
    .locals 1

    .line 406
    iget-object v0, p0, Lio/sentry/ExternalOptions;->debug:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDist()Ljava/lang/String;
    .locals 1

    .line 377
    iget-object v0, p0, Lio/sentry/ExternalOptions;->dist:Ljava/lang/String;

    return-object v0
.end method

.method public getDsn()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lio/sentry/ExternalOptions;->dsn:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableDeduplication()Ljava/lang/Boolean;
    .locals 1

    .line 414
    iget-object v0, p0, Lio/sentry/ExternalOptions;->enableDeduplication:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEnableUncaughtExceptionHandler()Ljava/lang/Boolean;
    .locals 1

    .line 393
    iget-object v0, p0, Lio/sentry/ExternalOptions;->enableUncaughtExceptionHandler:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lio/sentry/ExternalOptions;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public getIdleTimeout()Ljava/lang/Long;
    .locals 1

    .line 527
    iget-object v0, p0, Lio/sentry/ExternalOptions;->idleTimeout:Ljava/lang/Long;

    return-object v0
.end method

.method public getIgnoredCheckIns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 620
    iget-object v0, p0, Lio/sentry/ExternalOptions;->ignoredCheckIns:Ljava/util/List;

    return-object v0
.end method

.method public getIgnoredErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lio/sentry/ExternalOptions;->ignoredErrors:Ljava/util/List;

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

    .line 486
    iget-object v0, p0, Lio/sentry/ExternalOptions;->ignoredExceptionsForType:Ljava/util/Set;

    return-object v0
.end method

.method public getIgnoredTransactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lio/sentry/ExternalOptions;->ignoredTransactions:Ljava/util/List;

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

    .line 466
    iget-object v0, p0, Lio/sentry/ExternalOptions;->inAppExcludes:Ljava/util/List;

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

    .line 470
    iget-object v0, p0, Lio/sentry/ExternalOptions;->inAppIncludes:Ljava/util/List;

    return-object v0
.end method

.method public getMaxRequestBodySize()Lio/sentry/SentryOptions$RequestSize;
    .locals 1

    .line 446
    iget-object v0, p0, Lio/sentry/ExternalOptions;->maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

    return-object v0
.end method

.method public getOrgId()Ljava/lang/String;
    .locals 1

    .line 762
    iget-object v0, p0, Lio/sentry/ExternalOptions;->orgId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrintUncaughtStackTrace()Ljava/lang/Boolean;
    .locals 1

    .line 519
    iget-object v0, p0, Lio/sentry/ExternalOptions;->printUncaughtStackTrace:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getProfileLifecycle()Lio/sentry/ProfileLifecycle;
    .locals 1

    .line 770
    iget-object v0, p0, Lio/sentry/ExternalOptions;->profileLifecycle:Lio/sentry/ProfileLifecycle;

    return-object v0
.end method

.method public getProfileSessionSampleRate()Ljava/lang/Double;
    .locals 1

    .line 738
    iget-object v0, p0, Lio/sentry/ExternalOptions;->profileSessionSampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getProfilesSampleRate()Ljava/lang/Double;
    .locals 1

    .line 438
    iget-object v0, p0, Lio/sentry/ExternalOptions;->profilesSampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getProfilingTracesDirPath()Ljava/lang/String;
    .locals 1

    .line 746
    iget-object v0, p0, Lio/sentry/ExternalOptions;->profilingTracesDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getProguardUuid()Ljava/lang/String;
    .locals 1

    .line 478
    iget-object v0, p0, Lio/sentry/ExternalOptions;->proguardUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getProxy()Lio/sentry/SentryOptions$Proxy;
    .locals 1

    .line 458
    iget-object v0, p0, Lio/sentry/ExternalOptions;->proxy:Lio/sentry/SentryOptions$Proxy;

    return-object v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lio/sentry/ExternalOptions;->release:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()Ljava/lang/Double;
    .locals 1

    .line 422
    iget-object v0, p0, Lio/sentry/ExternalOptions;->sampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getSendClientReports()Ljava/lang/Boolean;
    .locals 1

    .line 559
    iget-object v0, p0, Lio/sentry/ExternalOptions;->sendClientReports:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 385
    iget-object v0, p0, Lio/sentry/ExternalOptions;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionFlushTimeoutMillis()Ljava/lang/Long;
    .locals 1

    .line 543
    iget-object v0, p0, Lio/sentry/ExternalOptions;->sessionFlushTimeoutMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getShutdownTimeoutMillis()Ljava/lang/Long;
    .locals 1

    .line 535
    iget-object v0, p0, Lio/sentry/ExternalOptions;->shutdownTimeoutMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getSpotlightConnectionUrl()Ljava/lang/String;
    .locals 1

    .line 703
    iget-object v0, p0, Lio/sentry/ExternalOptions;->spotlightConnectionUrl:Ljava/lang/String;

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

    .line 454
    iget-object v0, p0, Lio/sentry/ExternalOptions;->tags:Ljava/util/Map;

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

    .line 402
    iget-object v0, p0, Lio/sentry/ExternalOptions;->tracePropagationTargets:Ljava/util/List;

    return-object v0
.end method

.method public getTracesSampleRate()Ljava/lang/Double;
    .locals 1

    .line 430
    iget-object v0, p0, Lio/sentry/ExternalOptions;->tracesSampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public isCaptureOpenTelemetryEvents()Ljava/lang/Boolean;
    .locals 1

    .line 718
    iget-object v0, p0, Lio/sentry/ExternalOptions;->captureOpenTelemetryEvents:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnableBackpressureHandling()Ljava/lang/Boolean;
    .locals 1

    .line 638
    iget-object v0, p0, Lio/sentry/ExternalOptions;->enableBackpressureHandling:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnableCacheTracing()Ljava/lang/Boolean;
    .locals 1

    .line 655
    iget-object v0, p0, Lio/sentry/ExternalOptions;->enableCacheTracing:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnableDatabaseTransactionTracing()Ljava/lang/Boolean;
    .locals 1

    .line 647
    iget-object v0, p0, Lio/sentry/ExternalOptions;->enableDatabaseTransactionTracing:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnableLogs()Ljava/lang/Boolean;
    .locals 1

    .line 726
    iget-object v0, p0, Lio/sentry/ExternalOptions;->enableLogs:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnableMetrics()Ljava/lang/Boolean;
    .locals 1

    .line 734
    iget-object v0, p0, Lio/sentry/ExternalOptions;->enableMetrics:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnablePrettySerializationOutput()Ljava/lang/Boolean;
    .locals 1

    .line 583
    iget-object v0, p0, Lio/sentry/ExternalOptions;->enablePrettySerializationOutput:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnableQueueTracing()Ljava/lang/Boolean;
    .locals 1

    .line 663
    iget-object v0, p0, Lio/sentry/ExternalOptions;->enableQueueTracing:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnableSpotlight()Ljava/lang/Boolean;
    .locals 1

    .line 698
    iget-object v0, p0, Lio/sentry/ExternalOptions;->enableSpotlight:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 575
    iget-object v0, p0, Lio/sentry/ExternalOptions;->enabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isForceInit()Ljava/lang/Boolean;
    .locals 1

    .line 680
    iget-object v0, p0, Lio/sentry/ExternalOptions;->forceInit:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isGlobalHubMode()Ljava/lang/Boolean;
    .locals 1

    .line 672
    iget-object v0, p0, Lio/sentry/ExternalOptions;->globalHubMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSendDefaultPii()Ljava/lang/Boolean;
    .locals 1

    .line 600
    iget-object v0, p0, Lio/sentry/ExternalOptions;->sendDefaultPii:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSendModules()Ljava/lang/Boolean;
    .locals 1

    .line 592
    iget-object v0, p0, Lio/sentry/ExternalOptions;->sendModules:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isStrictTraceContinuation()Ljava/lang/Boolean;
    .locals 1

    .line 754
    iget-object v0, p0, Lio/sentry/ExternalOptions;->strictTraceContinuation:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCaptureOpenTelemetryEvents(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "captureOpenTelemetryEvents"    # Ljava/lang/Boolean;

    .line 713
    iput-object p1, p0, Lio/sentry/ExternalOptions;->captureOpenTelemetryEvents:Ljava/lang/Boolean;

    .line 714
    return-void
.end method

.method public setCron(Lio/sentry/SentryOptions$Cron;)V
    .locals 0
    .param p1, "cron"    # Lio/sentry/SentryOptions$Cron;

    .line 688
    iput-object p1, p0, Lio/sentry/ExternalOptions;->cron:Lio/sentry/SentryOptions$Cron;

    .line 689
    return-void
.end method

.method public setDataCollection(Lio/sentry/DataCollection;)V
    .locals 0
    .param p1, "dataCollection"    # Lio/sentry/DataCollection;

    .line 612
    iput-object p1, p0, Lio/sentry/ExternalOptions;->dataCollection:Lio/sentry/DataCollection;

    .line 613
    return-void
.end method

.method public setDebug(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "debug"    # Ljava/lang/Boolean;

    .line 410
    iput-object p1, p0, Lio/sentry/ExternalOptions;->debug:Ljava/lang/Boolean;

    .line 411
    return-void
.end method

.method public setDist(Ljava/lang/String;)V
    .locals 0
    .param p1, "dist"    # Ljava/lang/String;

    .line 381
    iput-object p1, p0, Lio/sentry/ExternalOptions;->dist:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setDsn(Ljava/lang/String;)V
    .locals 0
    .param p1, "dsn"    # Ljava/lang/String;

    .line 357
    iput-object p1, p0, Lio/sentry/ExternalOptions;->dsn:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public setEnableBackpressureHandling(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enableBackpressureHandling"    # Ljava/lang/Boolean;

    .line 633
    iput-object p1, p0, Lio/sentry/ExternalOptions;->enableBackpressureHandling:Ljava/lang/Boolean;

    .line 634
    return-void
.end method

.method public setEnableCacheTracing(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enableCacheTracing"    # Ljava/lang/Boolean;

    .line 651
    iput-object p1, p0, Lio/sentry/ExternalOptions;->enableCacheTracing:Ljava/lang/Boolean;

    .line 652
    return-void
.end method

.method public setEnableDatabaseTransactionTracing(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enableDatabaseTransactionTracing"    # Ljava/lang/Boolean;

    .line 643
    iput-object p1, p0, Lio/sentry/ExternalOptions;->enableDatabaseTransactionTracing:Ljava/lang/Boolean;

    .line 644
    return-void
.end method

.method public setEnableDeduplication(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enableDeduplication"    # Ljava/lang/Boolean;

    .line 418
    iput-object p1, p0, Lio/sentry/ExternalOptions;->enableDeduplication:Ljava/lang/Boolean;

    .line 419
    return-void
.end method

.method public setEnableLogs(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enableLogs"    # Ljava/lang/Boolean;

    .line 722
    iput-object p1, p0, Lio/sentry/ExternalOptions;->enableLogs:Ljava/lang/Boolean;

    .line 723
    return-void
.end method

.method public setEnableMetrics(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enableMetrics"    # Ljava/lang/Boolean;

    .line 730
    iput-object p1, p0, Lio/sentry/ExternalOptions;->enableMetrics:Ljava/lang/Boolean;

    .line 731
    return-void
.end method

.method public setEnablePrettySerializationOutput(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enablePrettySerializationOutput"    # Ljava/lang/Boolean;

    .line 588
    iput-object p1, p0, Lio/sentry/ExternalOptions;->enablePrettySerializationOutput:Ljava/lang/Boolean;

    .line 589
    return-void
.end method

.method public setEnableQueueTracing(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enableQueueTracing"    # Ljava/lang/Boolean;

    .line 659
    iput-object p1, p0, Lio/sentry/ExternalOptions;->enableQueueTracing:Ljava/lang/Boolean;

    .line 660
    return-void
.end method

.method public setEnableSpotlight(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enableSpotlight"    # Ljava/lang/Boolean;

    .line 693
    iput-object p1, p0, Lio/sentry/ExternalOptions;->enableSpotlight:Ljava/lang/Boolean;

    .line 694
    return-void
.end method

.method public setEnableUncaughtExceptionHandler(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enableUncaughtExceptionHandler"    # Ljava/lang/Boolean;

    .line 398
    iput-object p1, p0, Lio/sentry/ExternalOptions;->enableUncaughtExceptionHandler:Ljava/lang/Boolean;

    .line 399
    return-void
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .line 579
    iput-object p1, p0, Lio/sentry/ExternalOptions;->enabled:Ljava/lang/Boolean;

    .line 580
    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0
    .param p1, "environment"    # Ljava/lang/String;

    .line 365
    iput-object p1, p0, Lio/sentry/ExternalOptions;->environment:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setForceInit(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "forceInit"    # Ljava/lang/Boolean;

    .line 676
    iput-object p1, p0, Lio/sentry/ExternalOptions;->forceInit:Ljava/lang/Boolean;

    .line 677
    return-void
.end method

.method public setGlobalHubMode(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "globalHubMode"    # Ljava/lang/Boolean;

    .line 667
    iput-object p1, p0, Lio/sentry/ExternalOptions;->globalHubMode:Ljava/lang/Boolean;

    .line 668
    return-void
.end method

.method public setIdleTimeout(Ljava/lang/Long;)V
    .locals 0
    .param p1, "idleTimeout"    # Ljava/lang/Long;

    .line 531
    iput-object p1, p0, Lio/sentry/ExternalOptions;->idleTimeout:Ljava/lang/Long;

    .line 532
    return-void
.end method

.method public setIgnoredCheckIns(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 616
    .local p1, "ignoredCheckIns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lio/sentry/ExternalOptions;->ignoredCheckIns:Ljava/util/List;

    .line 617
    return-void
.end method

.method public setIgnoredErrors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 555
    .local p1, "ignoredErrors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lio/sentry/ExternalOptions;->ignoredErrors:Ljava/util/List;

    .line 556
    return-void
.end method

.method public setIgnoredTransactions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 624
    .local p1, "ignoredTransactions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lio/sentry/ExternalOptions;->ignoredTransactions:Ljava/util/List;

    .line 625
    return-void
.end method

.method public setMaxRequestBodySize(Lio/sentry/SentryOptions$RequestSize;)V
    .locals 0
    .param p1, "maxRequestBodySize"    # Lio/sentry/SentryOptions$RequestSize;

    .line 450
    iput-object p1, p0, Lio/sentry/ExternalOptions;->maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

    .line 451
    return-void
.end method

.method public setOrgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "orgId"    # Ljava/lang/String;

    .line 766
    iput-object p1, p0, Lio/sentry/ExternalOptions;->orgId:Ljava/lang/String;

    .line 767
    return-void
.end method

.method public setPrintUncaughtStackTrace(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "printUncaughtStackTrace"    # Ljava/lang/Boolean;

    .line 523
    iput-object p1, p0, Lio/sentry/ExternalOptions;->printUncaughtStackTrace:Ljava/lang/Boolean;

    .line 524
    return-void
.end method

.method public setProfileLifecycle(Lio/sentry/ProfileLifecycle;)V
    .locals 0
    .param p1, "profileLifecycle"    # Lio/sentry/ProfileLifecycle;

    .line 774
    iput-object p1, p0, Lio/sentry/ExternalOptions;->profileLifecycle:Lio/sentry/ProfileLifecycle;

    .line 775
    return-void
.end method

.method public setProfileSessionSampleRate(Ljava/lang/Double;)V
    .locals 0
    .param p1, "profileSessionSampleRate"    # Ljava/lang/Double;

    .line 742
    iput-object p1, p0, Lio/sentry/ExternalOptions;->profileSessionSampleRate:Ljava/lang/Double;

    .line 743
    return-void
.end method

.method public setProfilesSampleRate(Ljava/lang/Double;)V
    .locals 0
    .param p1, "profilesSampleRate"    # Ljava/lang/Double;

    .line 442
    iput-object p1, p0, Lio/sentry/ExternalOptions;->profilesSampleRate:Ljava/lang/Double;

    .line 443
    return-void
.end method

.method public setProfilingTracesDirPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "profilingTracesDirPath"    # Ljava/lang/String;

    .line 750
    iput-object p1, p0, Lio/sentry/ExternalOptions;->profilingTracesDirPath:Ljava/lang/String;

    .line 751
    return-void
.end method

.method public setProguardUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "proguardUuid"    # Ljava/lang/String;

    .line 482
    iput-object p1, p0, Lio/sentry/ExternalOptions;->proguardUuid:Ljava/lang/String;

    .line 483
    return-void
.end method

.method public setProxy(Lio/sentry/SentryOptions$Proxy;)V
    .locals 0
    .param p1, "proxy"    # Lio/sentry/SentryOptions$Proxy;

    .line 462
    iput-object p1, p0, Lio/sentry/ExternalOptions;->proxy:Lio/sentry/SentryOptions$Proxy;

    .line 463
    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 0
    .param p1, "release"    # Ljava/lang/String;

    .line 373
    iput-object p1, p0, Lio/sentry/ExternalOptions;->release:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setSampleRate(Ljava/lang/Double;)V
    .locals 0
    .param p1, "sampleRate"    # Ljava/lang/Double;

    .line 426
    iput-object p1, p0, Lio/sentry/ExternalOptions;->sampleRate:Ljava/lang/Double;

    .line 427
    return-void
.end method

.method public setSendClientReports(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "sendClientReports"    # Ljava/lang/Boolean;

    .line 563
    iput-object p1, p0, Lio/sentry/ExternalOptions;->sendClientReports:Ljava/lang/Boolean;

    .line 564
    return-void
.end method

.method public setSendDefaultPii(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "sendDefaultPii"    # Ljava/lang/Boolean;

    .line 604
    iput-object p1, p0, Lio/sentry/ExternalOptions;->sendDefaultPii:Ljava/lang/Boolean;

    .line 605
    return-void
.end method

.method public setSendModules(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "sendModules"    # Ljava/lang/Boolean;

    .line 596
    iput-object p1, p0, Lio/sentry/ExternalOptions;->sendModules:Ljava/lang/Boolean;

    .line 597
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverName"    # Ljava/lang/String;

    .line 389
    iput-object p1, p0, Lio/sentry/ExternalOptions;->serverName:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setSessionFlushTimeoutMillis(Ljava/lang/Long;)V
    .locals 0
    .param p1, "sessionFlushTimeoutMillis"    # Ljava/lang/Long;

    .line 547
    iput-object p1, p0, Lio/sentry/ExternalOptions;->sessionFlushTimeoutMillis:Ljava/lang/Long;

    .line 548
    return-void
.end method

.method public setShutdownTimeoutMillis(Ljava/lang/Long;)V
    .locals 0
    .param p1, "shutdownTimeoutMillis"    # Ljava/lang/Long;

    .line 539
    iput-object p1, p0, Lio/sentry/ExternalOptions;->shutdownTimeoutMillis:Ljava/lang/Long;

    .line 540
    return-void
.end method

.method public setSpotlightConnectionUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "spotlightConnectionUrl"    # Ljava/lang/String;

    .line 708
    iput-object p1, p0, Lio/sentry/ExternalOptions;->spotlightConnectionUrl:Ljava/lang/String;

    .line 709
    return-void
.end method

.method public setStrictTraceContinuation(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "strictTraceContinuation"    # Ljava/lang/Boolean;

    .line 758
    iput-object p1, p0, Lio/sentry/ExternalOptions;->strictTraceContinuation:Ljava/lang/Boolean;

    .line 759
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lio/sentry/ExternalOptions;->tags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    return-void
.end method

.method public setTracesSampleRate(Ljava/lang/Double;)V
    .locals 0
    .param p1, "tracesSampleRate"    # Ljava/lang/Double;

    .line 434
    iput-object p1, p0, Lio/sentry/ExternalOptions;->tracesSampleRate:Ljava/lang/Double;

    .line 435
    return-void
.end method
