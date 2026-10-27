.class final Lio/sentry/android/core/ManifestMetadataReader;
.super Ljava/lang/Object;
.source "ManifestMetadataReader.java"


# static fields
.field static final ANR_ATTACH_THREAD_DUMPS:Ljava/lang/String; = "io.sentry.anr.attach-thread-dumps"

.field static final ANR_ENABLE:Ljava/lang/String; = "io.sentry.anr.enable"

.field static final ANR_PROFILING_SAMPLE_RATE:Ljava/lang/String; = "io.sentry.anr.profiling.sample-rate"

.field static final ANR_REPORT_DEBUG:Ljava/lang/String; = "io.sentry.anr.report-debug"

.field static final ANR_REPORT_HISTORICAL:Ljava/lang/String; = "io.sentry.anr.report-historical"

.field static final ANR_TIMEOUT_INTERVAL_MILLIS:Ljava/lang/String; = "io.sentry.anr.timeout-interval-millis"

.field static final ATTACH_SCREENSHOT:Ljava/lang/String; = "io.sentry.attach-screenshot"

.field static final ATTACH_THREADS:Ljava/lang/String; = "io.sentry.attach-threads"

.field static final ATTACH_VIEW_HIERARCHY:Ljava/lang/String; = "io.sentry.attach-view-hierarchy"

.field static final AUTO_INIT:Ljava/lang/String; = "io.sentry.auto-init"

.field static final AUTO_SESSION_TRACKING_ENABLE:Ljava/lang/String; = "io.sentry.auto-session-tracking.enable"

.field static final BREADCRUMBS_ACTIVITY_LIFECYCLE_ENABLE:Ljava/lang/String; = "io.sentry.breadcrumbs.activity-lifecycle"

.field static final BREADCRUMBS_APP_COMPONENTS_ENABLE:Ljava/lang/String; = "io.sentry.breadcrumbs.app-components"

.field static final BREADCRUMBS_APP_LIFECYCLE_ENABLE:Ljava/lang/String; = "io.sentry.breadcrumbs.app-lifecycle"

.field static final BREADCRUMBS_NETWORK_EVENTS_ENABLE:Ljava/lang/String; = "io.sentry.breadcrumbs.network-events"

.field static final BREADCRUMBS_SYSTEM_EVENTS_ENABLE:Ljava/lang/String; = "io.sentry.breadcrumbs.system-events"

.field static final BREADCRUMBS_USER_INTERACTION_ENABLE:Ljava/lang/String; = "io.sentry.breadcrumbs.user-interaction"

.field static final CLIENT_REPORTS_ENABLE:Ljava/lang/String; = "io.sentry.send-client-reports"

.field static final COLLECT_ADDITIONAL_CONTEXT:Ljava/lang/String; = "io.sentry.additional-context"

.field static final COLLECT_EXTERNAL_STORAGE_CONTEXT:Ljava/lang/String; = "io.sentry.external-storage-context"

.field static final DATA_COLLECTION_COOKIES:Ljava/lang/String; = "io.sentry.data-collection.cookies"

.field static final DATA_COLLECTION_DATABASE_QUERY_DATA:Ljava/lang/String; = "io.sentry.data-collection.database-query-data"

.field static final DATA_COLLECTION_FILE_PATHS:Ljava/lang/String; = "io.sentry.data-collection.file-paths"

.field static final DATA_COLLECTION_GRAPHQL_DOCUMENT:Ljava/lang/String; = "io.sentry.data-collection.graphql.document"

.field static final DATA_COLLECTION_GRAPHQL_VARIABLES:Ljava/lang/String; = "io.sentry.data-collection.graphql.variables"

.field static final DATA_COLLECTION_HTTP_BODIES:Ljava/lang/String; = "io.sentry.data-collection.http-bodies"

.field static final DATA_COLLECTION_HTTP_REQUEST_HEADERS:Ljava/lang/String; = "io.sentry.data-collection.http-headers.request"

.field static final DATA_COLLECTION_HTTP_RESPONSE_HEADERS:Ljava/lang/String; = "io.sentry.data-collection.http-headers.response"

.field static final DATA_COLLECTION_URL_QUERY_PARAMS:Ljava/lang/String; = "io.sentry.data-collection.url-query-params"

.field static final DATA_COLLECTION_USER_INFO:Ljava/lang/String; = "io.sentry.data-collection.user-info"

.field static final DEADLINE_TIMEOUT:Ljava/lang/String; = "io.sentry.traces.deadline-timeout"

.field static final DEBUG:Ljava/lang/String; = "io.sentry.debug"

.field static final DEBUG_LEVEL:Ljava/lang/String; = "io.sentry.debug.level"

.field static final DIST:Ljava/lang/String; = "io.sentry.dist"

.field static final DSN:Ljava/lang/String; = "io.sentry.dsn"

.field static final ENABLE_ANR_FINGERPRINTING:Ljava/lang/String; = "io.sentry.anr.enable-fingerprinting"

.field static final ENABLE_APP_START_PROFILING:Ljava/lang/String; = "io.sentry.profiling.enable-app-start"

.field static final ENABLE_AUTO_TRACE_ID_GENERATION:Ljava/lang/String; = "io.sentry.traces.enable-auto-id-generation"

.field static final ENABLE_LEGACY_PROFILING:Ljava/lang/String; = "io.sentry.profiling.enable-legacy-profiling"

.field static final ENABLE_LOGS:Ljava/lang/String; = "io.sentry.logs.enabled"

.field static final ENABLE_METRICS:Ljava/lang/String; = "io.sentry.metrics.enabled"

.field static final ENABLE_PERFORMANCE_V2:Ljava/lang/String; = "io.sentry.performance-v2.enable"

.field static final ENABLE_ROOT_CHECK:Ljava/lang/String; = "io.sentry.enable-root-check"

.field static final ENABLE_SCOPE_PERSISTENCE:Ljava/lang/String; = "io.sentry.enable-scope-persistence"

.field static final ENABLE_SENTRY:Ljava/lang/String; = "io.sentry.enabled"

.field static final ENABLE_STANDALONE_APP_START_TRACING:Ljava/lang/String; = "io.sentry.standalone-app-start-tracing.enable"

.field static final ENVIRONMENT:Ljava/lang/String; = "io.sentry.environment"

.field static final FEEDBACK_EMAIL_REQUIRED:Ljava/lang/String; = "io.sentry.feedback.is-email-required"

.field static final FEEDBACK_ENABLE_ATTACH_SCREENSHOT:Ljava/lang/String; = "io.sentry.feedback.enable-attach-screenshot"

.field static final FEEDBACK_NAME_REQUIRED:Ljava/lang/String; = "io.sentry.feedback.is-name-required"

.field static final FEEDBACK_SHOW_BRANDING:Ljava/lang/String; = "io.sentry.feedback.show-branding"

.field static final FEEDBACK_SHOW_EMAIL:Ljava/lang/String; = "io.sentry.feedback.show-email"

.field static final FEEDBACK_SHOW_NAME:Ljava/lang/String; = "io.sentry.feedback.show-name"

.field static final FEEDBACK_USE_SENTRY_USER:Ljava/lang/String; = "io.sentry.feedback.use-sentry-user"

.field static final FEEDBACK_USE_SHAKE_GESTURE:Ljava/lang/String; = "io.sentry.feedback.use-shake-gesture"

.field static final FORCE_INIT:Ljava/lang/String; = "io.sentry.force-init"

.field static final IDLE_TIMEOUT:Ljava/lang/String; = "io.sentry.traces.idle-timeout"

.field static final IGNORED_ERRORS:Ljava/lang/String; = "io.sentry.ignored-errors"

.field static final IN_APP_EXCLUDES:Ljava/lang/String; = "io.sentry.in-app-excludes"

.field static final IN_APP_INCLUDES:Ljava/lang/String; = "io.sentry.in-app-includes"

.field static final MAX_BREADCRUMBS:Ljava/lang/String; = "io.sentry.max-breadcrumbs"

.field static final MEMORY_LIMITER_ENABLE:Ljava/lang/String; = "io.sentry.memory-limiter.enable"

.field static final MEMORY_LIMITER_REPORT_HISTORICAL:Ljava/lang/String; = "io.sentry.memory-limiter.report-historical"

.field static final NDK_APP_HANG_TIMEOUT_INTERVAL_MILLIS:Ljava/lang/String; = "io.sentry.ndk.app-hang.timeout-interval-millis"

.field static final NDK_APP_HANG_TRACKING_ENABLE:Ljava/lang/String; = "io.sentry.ndk.app-hang.enable"

.field static final NDK_ENABLE:Ljava/lang/String; = "io.sentry.ndk.enable"

.field static final NDK_SCOPE_SYNC_ENABLE:Ljava/lang/String; = "io.sentry.ndk.scope-sync.enable"

.field static final NDK_SDK_NAME:Ljava/lang/String; = "io.sentry.ndk.sdk-name"

.field static final ORG_ID:Ljava/lang/String; = "io.sentry.org-id"

.field static final PERFORM_FRAMES_TRACKING:Ljava/lang/String; = "io.sentry.traces.frames-tracking"

.field static final PROFILER_START_ON_APP_START:Ljava/lang/String; = "io.sentry.traces.profiling.start-on-app-start"

.field static final PROFILES_SAMPLE_RATE:Ljava/lang/String; = "io.sentry.traces.profiling.sample-rate"

.field static final PROFILE_LIFECYCLE:Ljava/lang/String; = "io.sentry.traces.profiling.lifecycle"

.field static final PROFILE_SESSION_SAMPLE_RATE:Ljava/lang/String; = "io.sentry.traces.profiling.session-sample-rate"

.field static final PROGUARD_UUID:Ljava/lang/String; = "io.sentry.proguard-uuid"

.field static final RELEASE:Ljava/lang/String; = "io.sentry.release"

.field static final REPLAYS_CAPTURE_SURFACE_VIEWS:Ljava/lang/String; = "io.sentry.session-replay.capture-surface-views"

.field static final REPLAYS_DEBUG:Ljava/lang/String; = "io.sentry.session-replay.debug"

.field static final REPLAYS_ERROR_SAMPLE_RATE:Ljava/lang/String; = "io.sentry.session-replay.on-error-sample-rate"

.field static final REPLAYS_MASK_ALL_IMAGES:Ljava/lang/String; = "io.sentry.session-replay.mask-all-images"

.field static final REPLAYS_MASK_ALL_TEXT:Ljava/lang/String; = "io.sentry.session-replay.mask-all-text"

.field static final REPLAYS_NETWORK_CAPTURE_BODIES:Ljava/lang/String; = "io.sentry.session-replay.network-capture-bodies"

.field static final REPLAYS_NETWORK_DETAIL_ALLOW_URLS:Ljava/lang/String; = "io.sentry.session-replay.network-detail-allow-urls"

.field static final REPLAYS_NETWORK_DETAIL_DENY_URLS:Ljava/lang/String; = "io.sentry.session-replay.network-detail-deny-urls"

.field static final REPLAYS_NETWORK_REQUEST_HEADERS:Ljava/lang/String; = "io.sentry.session-replay.network-request-headers"

.field static final REPLAYS_NETWORK_RESPONSE_HEADERS:Ljava/lang/String; = "io.sentry.session-replay.network-response-headers"

.field static final REPLAYS_SCREENSHOT_STRATEGY:Ljava/lang/String; = "io.sentry.session-replay.screenshot-strategy"

.field static final REPLAYS_SESSION_SAMPLE_RATE:Ljava/lang/String; = "io.sentry.session-replay.session-sample-rate"

.field static final SAMPLE_RATE:Ljava/lang/String; = "io.sentry.sample-rate"

.field static final SCREENSHOT_MASK_ALL_IMAGES:Ljava/lang/String; = "io.sentry.screenshot.mask-all-images"

.field static final SCREENSHOT_MASK_ALL_TEXT:Ljava/lang/String; = "io.sentry.screenshot.mask-all-text"

.field static final SDK_NAME:Ljava/lang/String; = "io.sentry.sdk.name"

.field static final SDK_VERSION:Ljava/lang/String; = "io.sentry.sdk.version"

.field static final SEND_DEFAULT_PII:Ljava/lang/String; = "io.sentry.send-default-pii"

.field static final SEND_MODULES:Ljava/lang/String; = "io.sentry.send-modules"

.field static final SENTRY_GRADLE_PLUGIN_INTEGRATIONS:Ljava/lang/String; = "io.sentry.gradle-plugin-integrations"

.field static final SESSION_TRACKING_TIMEOUT_INTERVAL_MILLIS:Ljava/lang/String; = "io.sentry.session-tracking.timeout-interval-millis"

.field static final SPOTLIGHT_CONNECTION_URL:Ljava/lang/String; = "io.sentry.spotlight.url"

.field static final SPOTLIGHT_ENABLE:Ljava/lang/String; = "io.sentry.spotlight.enable"

.field static final STRICT_TRACE_CONTINUATION:Ljava/lang/String; = "io.sentry.strict-trace-continuation.enabled"

.field static final TOMBSTONE_ATTACH_RAW:Ljava/lang/String; = "io.sentry.tombstone.attach-raw"

.field static final TOMBSTONE_ENABLE:Ljava/lang/String; = "io.sentry.tombstone.enable"

.field static final TOMBSTONE_MERGE_TIME_THRESHOLD_MILLIS:Ljava/lang/String; = "io.sentry.tombstone.merge-time-threshold-millis"

.field static final TOMBSTONE_REPORT_HISTORICAL:Ljava/lang/String; = "io.sentry.tombstone.report-historical"

.field static final TRACES_ACTIVITY_AUTO_FINISH_ENABLE:Ljava/lang/String; = "io.sentry.traces.activity.auto-finish.enable"

.field static final TRACES_ACTIVITY_ENABLE:Ljava/lang/String; = "io.sentry.traces.activity.enable"

.field static final TRACES_SAMPLE_RATE:Ljava/lang/String; = "io.sentry.traces.sample-rate"

.field static final TRACES_UI_ENABLE:Ljava/lang/String; = "io.sentry.traces.user-interaction.enable"

.field static final TRACE_PROPAGATION_TARGETS:Ljava/lang/String; = "io.sentry.traces.trace-propagation-targets"

.field static final TRACE_SAMPLING:Ljava/lang/String; = "io.sentry.traces.trace-sampling"

.field static final TTFD_ENABLE:Ljava/lang/String; = "io.sentry.traces.time-to-full-display.enable"

.field static final UNCAUGHT_EXCEPTION_HANDLER_ENABLE:Ljava/lang/String; = "io.sentry.uncaught-exception-handler.enable"

.field static manifestMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyMetadata(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 250
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, ""

    const-string v3, "io.sentry.traces.trace-propagation-targets"

    const-string v4, "The application context is required."

    invoke-static {v1, v4}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    const-string v4, "The options object is required."

    invoke-static {v2, v4}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 254
    :try_start_0
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v5, p2

    :try_start_1
    invoke-static {v1, v4, v5}, Lio/sentry/android/core/ManifestMetadataReader;->getMetadata(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/Object;

    move-result-object v4

    .line 255
    .local v4, "metadata":Ljava/lang/Object;
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v6

    .line 257
    .local v6, "logger":Lio/sentry/ILogger;
    const/4 v7, 0x0

    if-eqz v4, :cond_28

    .line 258
    const-string v8, "io.sentry.debug"

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isDebug()Z

    move-result v9

    invoke-static {v4, v6, v8, v9}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setDebug(Z)V

    .line 260
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isDebug()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 261
    const-string v8, "io.sentry.debug.level"

    .line 266
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getDiagnosticLevel()Lio/sentry/SentryLevel;

    move-result-object v9

    invoke-virtual {v9}, Lio/sentry/SentryLevel;->name()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 262
    invoke-static {v4, v6, v8, v9}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 267
    .local v8, "level":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 268
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lio/sentry/SentryLevel;->valueOf(Ljava/lang/String;)Lio/sentry/SentryLevel;

    move-result-object v9

    invoke-virtual {v2, v9}, Lio/sentry/android/core/SentryAndroidOptions;->setDiagnosticLevel(Lio/sentry/SentryLevel;)V

    .line 272
    .end local v8    # "level":Ljava/lang/String;
    :cond_0
    const-string v8, "io.sentry.anr.enable"

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrEnabled()Z

    move-result v9

    invoke-static {v4, v6, v8, v9}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrEnabled(Z)V

    .line 273
    const-string v8, "io.sentry.tombstone.enable"

    .line 274
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isTombstoneEnabled()Z

    move-result v9

    invoke-static {v4, v6, v8, v9}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    .line 273
    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setTombstoneEnabled(Z)V

    .line 275
    const-string v8, "io.sentry.tombstone.attach-raw"

    .line 276
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachRawTombstone()Z

    move-result v9

    invoke-static {v4, v6, v8, v9}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    .line 275
    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachRawTombstone(Z)V

    .line 277
    const-string v8, "io.sentry.tombstone.report-historical"

    .line 282
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isReportHistoricalTombstones()Z

    move-result v9

    .line 278
    invoke-static {v4, v6, v8, v9}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    .line 277
    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setReportHistoricalTombstones(Z)V

    .line 283
    const-string v8, "io.sentry.tombstone.merge-time-threshold-millis"

    .line 288
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getTombstoneMergeTimeThresholdMillis()J

    move-result-wide v9

    .line 284
    invoke-static {v4, v6, v8, v9, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readLong(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;J)J

    move-result-wide v8

    .line 283
    invoke-virtual {v2, v8, v9}, Lio/sentry/android/core/SentryAndroidOptions;->setTombstoneMergeTimeThresholdMillis(J)V

    .line 289
    const-string v8, "io.sentry.memory-limiter.enable"

    .line 290
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isMemoryLimiterEnabled()Z

    move-result v9

    invoke-static {v4, v6, v8, v9}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    .line 289
    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setMemoryLimiterEnabled(Z)V

    .line 291
    const-string v8, "io.sentry.memory-limiter.report-historical"

    .line 296
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isReportHistoricalMemoryLimiterExits()Z

    move-result v9

    .line 292
    invoke-static {v4, v6, v8, v9}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    .line 291
    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setReportHistoricalMemoryLimiterExits(Z)V

    .line 299
    const-string v8, "io.sentry.auto-session-tracking.enable"

    .line 304
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoSessionTracking()Z

    move-result v9

    .line 300
    invoke-static {v4, v6, v8, v9}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    .line 299
    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAutoSessionTracking(Z)V

    .line 306
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSampleRate()Ljava/lang/Double;

    move-result-object v8

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    if-nez v8, :cond_1

    .line 307
    const-string v8, "io.sentry.sample-rate"

    invoke-static {v4, v6, v8}, Lio/sentry/android/core/ManifestMetadataReader;->readDouble(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)D

    move-result-wide v11

    .line 308
    .local v11, "sampleRate":D
    cmpl-double v8, v11, v9

    if-eqz v8, :cond_1

    .line 309
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setSampleRate(Ljava/lang/Double;)V

    .line 313
    .end local v11    # "sampleRate":D
    :cond_1
    const-string v8, "io.sentry.anr.report-debug"

    .line 314
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrReportInDebug()Z

    move-result v11

    invoke-static {v4, v6, v8, v11}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    .line 313
    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrReportInDebug(Z)V

    .line 316
    const-string v8, "io.sentry.anr.timeout-interval-millis"

    .line 321
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    move-result-wide v11

    .line 317
    invoke-static {v4, v6, v8, v11, v12}, Lio/sentry/android/core/ManifestMetadataReader;->readLong(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;J)J

    move-result-wide v11

    .line 316
    invoke-virtual {v2, v11, v12}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrTimeoutIntervalMillis(J)V

    .line 323
    const-string v8, "io.sentry.anr.attach-thread-dumps"

    .line 324
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachAnrThreadDump()Z

    move-result v11

    invoke-static {v4, v6, v8, v11}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    .line 323
    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachAnrThreadDump(Z)V

    .line 326
    const-string v8, "io.sentry.anr.report-historical"

    .line 327
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isReportHistoricalAnrs()Z

    move-result v11

    invoke-static {v4, v6, v8, v11}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    .line 326
    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setReportHistoricalAnrs(Z)V

    .line 329
    const-string v8, "io.sentry.ndk.app-hang.enable"

    .line 334
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNdkAppHangTracking()Z

    move-result v11

    .line 330
    invoke-static {v4, v6, v8, v11}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    .line 329
    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableNdkAppHangTracking(Z)V

    .line 336
    const-string v8, "io.sentry.ndk.app-hang.timeout-interval-millis"

    .line 341
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getNdkAppHangTimeoutIntervalMillis()J

    move-result-wide v11

    .line 337
    invoke-static {v4, v6, v8, v11, v12}, Lio/sentry/android/core/ManifestMetadataReader;->readLong(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;J)J

    move-result-wide v11

    .line 336
    invoke-virtual {v2, v11, v12}, Lio/sentry/android/core/SentryAndroidOptions;->setNdkAppHangTimeoutIntervalMillis(J)V

    .line 343
    const-string v8, "io.sentry.dsn"

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getDsn()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v6, v8, v11}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 344
    .local v8, "dsn":Ljava/lang/String;
    const-string v11, "io.sentry.enabled"

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnabled()Z

    move-result v12

    invoke-static {v4, v6, v11, v12}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v11

    .line 346
    .local v11, "enabled":Z
    if-eqz v11, :cond_3

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_0

    .line 352
    :cond_2
    if-nez v8, :cond_4

    .line 353
    nop

    .line 354
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v12

    sget-object v13, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v14, "DSN is required. Use empty string to disable SDK."

    new-array v15, v7, [Ljava/lang/Object;

    .line 355
    invoke-interface {v12, v13, v14, v15}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 347
    :cond_3
    :goto_0
    nop

    .line 348
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v12

    sget-object v13, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v14, "Sentry enabled flag set to false or DSN is empty: disabling sentry-android"

    new-array v15, v7, [Ljava/lang/Object;

    .line 349
    invoke-interface {v12, v13, v14, v15}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    :cond_4
    :goto_1
    invoke-virtual {v2, v11}, Lio/sentry/android/core/SentryAndroidOptions;->setEnabled(Z)V

    .line 359
    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setDsn(Ljava/lang/String;)V

    .line 361
    const-string v12, "io.sentry.ndk.enable"

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNdk()Z

    move-result v13

    invoke-static {v4, v6, v12, v13}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v12

    invoke-virtual {v2, v12}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableNdk(Z)V

    .line 363
    const-string v12, "io.sentry.ndk.scope-sync.enable"

    .line 364
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableScopeSync()Z

    move-result v13

    invoke-static {v4, v6, v12, v13}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v12

    .line 363
    invoke-virtual {v2, v12}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableScopeSync(Z)V

    .line 366
    const-string v12, "io.sentry.ndk.sdk-name"

    .line 367
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getNativeSdkName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v6, v12, v13}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 368
    .local v12, "nativeSdkName":Ljava/lang/String;
    if-eqz v12, :cond_5

    .line 369
    invoke-virtual {v2, v12}, Lio/sentry/android/core/SentryAndroidOptions;->setNativeSdkName(Ljava/lang/String;)V

    .line 372
    :cond_5
    const-string v13, "io.sentry.release"

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getRelease()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v6, v13, v14}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lio/sentry/android/core/SentryAndroidOptions;->setRelease(Ljava/lang/String;)V

    .line 374
    const-string v13, "io.sentry.dist"

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getDist()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v6, v13, v14}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lio/sentry/android/core/SentryAndroidOptions;->setDist(Ljava/lang/String;)V

    .line 376
    const-string v13, "io.sentry.environment"

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v6, v13, v14}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lio/sentry/android/core/SentryAndroidOptions;->setEnvironment(Ljava/lang/String;)V

    .line 378
    const-string v13, "io.sentry.session-tracking.timeout-interval-millis"

    .line 383
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionTrackingIntervalMillis()J

    move-result-wide v14

    .line 379
    invoke-static {v4, v6, v13, v14, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readLong(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;J)J

    move-result-wide v13

    .line 378
    invoke-virtual {v2, v13, v14}, Lio/sentry/android/core/SentryAndroidOptions;->setSessionTrackingIntervalMillis(J)V

    .line 385
    const-string v13, "io.sentry.max-breadcrumbs"

    .line 386
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getMaxBreadcrumbs()I

    move-result v14

    int-to-long v14, v14

    invoke-static {v4, v6, v13, v14, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readLong(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;J)J

    move-result-wide v13

    long-to-int v13, v13

    .line 385
    invoke-virtual {v2, v13}, Lio/sentry/android/core/SentryAndroidOptions;->setMaxBreadcrumbs(I)V

    .line 388
    const-string v13, "io.sentry.breadcrumbs.activity-lifecycle"

    .line 393
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleBreadcrumbs()Z

    move-result v14

    .line 389
    invoke-static {v4, v6, v13, v14}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v13

    .line 388
    invoke-virtual {v2, v13}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableActivityLifecycleBreadcrumbs(Z)V

    .line 395
    const-string v13, "io.sentry.breadcrumbs.app-lifecycle"

    .line 400
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppLifecycleBreadcrumbs()Z

    move-result v14

    .line 396
    invoke-static {v4, v6, v13, v14}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v13

    .line 395
    invoke-virtual {v2, v13}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppLifecycleBreadcrumbs(Z)V

    .line 402
    const-string v13, "io.sentry.breadcrumbs.system-events"

    .line 407
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    move-result v14

    .line 403
    invoke-static {v4, v6, v13, v14}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v13

    .line 402
    invoke-virtual {v2, v13}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableSystemEventBreadcrumbs(Z)V

    .line 409
    const-string v13, "io.sentry.breadcrumbs.app-components"

    .line 414
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppComponentBreadcrumbs()Z

    move-result v14

    .line 410
    invoke-static {v4, v6, v13, v14}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v13

    .line 409
    invoke-virtual {v2, v13}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppComponentBreadcrumbs(Z)V

    .line 416
    const-string v13, "io.sentry.breadcrumbs.user-interaction"

    .line 421
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableUserInteractionBreadcrumbs()Z

    move-result v14

    .line 417
    invoke-static {v4, v6, v13, v14}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v13

    .line 416
    invoke-virtual {v2, v13}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableUserInteractionBreadcrumbs(Z)V

    .line 423
    const-string v13, "io.sentry.breadcrumbs.network-events"

    .line 428
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNetworkEventBreadcrumbs()Z

    move-result v14

    .line 424
    invoke-static {v4, v6, v13, v14}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v13

    .line 423
    invoke-virtual {v2, v13}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableNetworkEventBreadcrumbs(Z)V

    .line 430
    const-string v13, "io.sentry.uncaught-exception-handler.enable"

    .line 435
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableUncaughtExceptionHandler()Z

    move-result v14

    .line 431
    invoke-static {v4, v6, v13, v14}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v13

    .line 430
    invoke-virtual {v2, v13}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableUncaughtExceptionHandler(Z)V

    .line 437
    const-string v13, "io.sentry.attach-threads"

    .line 438
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachThreads()Z

    move-result v14

    invoke-static {v4, v6, v13, v14}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v13

    .line 437
    invoke-virtual {v2, v13}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachThreads(Z)V

    .line 440
    const-string v13, "io.sentry.attach-screenshot"

    .line 441
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachScreenshot()Z

    move-result v14

    invoke-static {v4, v6, v13, v14}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v13

    .line 440
    invoke-virtual {v2, v13}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachScreenshot(Z)V

    .line 443
    const-string v13, "io.sentry.attach-view-hierarchy"

    .line 444
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachViewHierarchy()Z

    move-result v14

    invoke-static {v4, v6, v13, v14}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v13

    .line 443
    invoke-virtual {v2, v13}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachViewHierarchy(Z)V

    .line 446
    const-string v13, "io.sentry.send-client-reports"

    .line 447
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isSendClientReports()Z

    move-result v14

    invoke-static {v4, v6, v13, v14}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v13

    .line 446
    invoke-virtual {v2, v13}, Lio/sentry/android/core/SentryAndroidOptions;->setSendClientReports(Z)V

    .line 449
    const-string v13, "io.sentry.auto-init"

    const/4 v14, 0x1

    invoke-static {v4, v6, v13, v14}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v13

    .line 450
    .local v13, "isAutoInitEnabled":Z
    if-eqz v13, :cond_6

    .line 451
    sget-object v15, Lio/sentry/InitPriority;->LOW:Lio/sentry/InitPriority;

    invoke-virtual {v2, v15}, Lio/sentry/android/core/SentryAndroidOptions;->setInitPriority(Lio/sentry/InitPriority;)V

    .line 454
    :cond_6
    const-string v15, "io.sentry.force-init"

    move-wide/from16 v16, v9

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isForceInit()Z

    move-result v9

    invoke-static {v4, v6, v15, v9}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v2, v9}, Lio/sentry/android/core/SentryAndroidOptions;->setForceInit(Z)V

    .line 456
    const-string v9, "io.sentry.additional-context"

    .line 461
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isCollectAdditionalContext()Z

    move-result v10

    .line 457
    invoke-static {v4, v6, v9, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v9

    .line 456
    invoke-virtual {v2, v9}, Lio/sentry/android/core/SentryAndroidOptions;->setCollectAdditionalContext(Z)V

    .line 463
    const-string v9, "io.sentry.external-storage-context"

    .line 468
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isCollectExternalStorageContext()Z

    move-result v10

    .line 464
    invoke-static {v4, v6, v9, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v9

    .line 463
    invoke-virtual {v2, v9}, Lio/sentry/android/core/SentryAndroidOptions;->setCollectExternalStorageContext(Z)V

    .line 470
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getTracesSampleRate()Ljava/lang/Double;

    move-result-object v9

    if-nez v9, :cond_7

    .line 471
    const-string v9, "io.sentry.traces.sample-rate"

    invoke-static {v4, v6, v9}, Lio/sentry/android/core/ManifestMetadataReader;->readDouble(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)D

    move-result-wide v9

    .line 472
    .local v9, "tracesSampleRate":D
    cmpl-double v15, v9, v16

    if-eqz v15, :cond_7

    .line 473
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v2, v15}, Lio/sentry/android/core/SentryAndroidOptions;->setTracesSampleRate(Ljava/lang/Double;)V

    .line 477
    .end local v9    # "tracesSampleRate":D
    :cond_7
    const-string v9, "io.sentry.traces.trace-sampling"

    .line 478
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isTraceSampling()Z

    move-result v10

    invoke-static {v4, v6, v9, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v9

    .line 477
    invoke-virtual {v2, v9}, Lio/sentry/android/core/SentryAndroidOptions;->setTraceSampling(Z)V

    .line 480
    const-string v9, "io.sentry.traces.activity.enable"

    .line 485
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoActivityLifecycleTracing()Z

    move-result v10

    .line 481
    invoke-static {v4, v6, v9, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v9

    .line 480
    invoke-virtual {v2, v9}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAutoActivityLifecycleTracing(Z)V

    .line 487
    const-string v9, "io.sentry.traces.activity.auto-finish.enable"

    .line 492
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleTracingAutoFinish()Z

    move-result v10

    .line 488
    invoke-static {v4, v6, v9, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v9

    .line 487
    invoke-virtual {v2, v9}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableActivityLifecycleTracingAutoFinish(Z)V

    .line 494
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v9

    if-nez v9, :cond_8

    .line 495
    const-string v9, "io.sentry.traces.profiling.sample-rate"

    invoke-static {v4, v6, v9}, Lio/sentry/android/core/ManifestMetadataReader;->readDouble(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)D

    move-result-wide v9

    .line 496
    .local v9, "profilesSampleRate":D
    cmpl-double v15, v9, v16

    if-eqz v15, :cond_8

    .line 497
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v2, v15}, Lio/sentry/android/core/SentryAndroidOptions;->setProfilesSampleRate(Ljava/lang/Double;)V

    .line 501
    .end local v9    # "profilesSampleRate":D
    :cond_8
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getProfileSessionSampleRate()Ljava/lang/Double;

    move-result-object v9

    if-nez v9, :cond_9

    .line 502
    const-string v9, "io.sentry.traces.profiling.session-sample-rate"

    .line 503
    invoke-static {v4, v6, v9}, Lio/sentry/android/core/ManifestMetadataReader;->readDouble(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)D

    move-result-wide v9

    .line 504
    .local v9, "profileSessionSampleRate":D
    cmpl-double v15, v9, v16

    if-eqz v15, :cond_9

    .line 505
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v2, v15}, Lio/sentry/android/core/SentryAndroidOptions;->setProfileSessionSampleRate(Ljava/lang/Double;)V

    .line 509
    .end local v9    # "profileSessionSampleRate":D
    :cond_9
    const-string v9, "io.sentry.traces.profiling.lifecycle"

    .line 514
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getProfileLifecycle()Lio/sentry/ProfileLifecycle;

    move-result-object v10

    invoke-virtual {v10}, Lio/sentry/ProfileLifecycle;->name()Ljava/lang/String;

    move-result-object v10

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 510
    invoke-static {v4, v6, v9, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 515
    .local v9, "profileLifecycle":Ljava/lang/String;
    if-eqz v9, :cond_a

    .line 516
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 517
    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lio/sentry/ProfileLifecycle;->valueOf(Ljava/lang/String;)Lio/sentry/ProfileLifecycle;

    move-result-object v10

    .line 516
    invoke-virtual {v2, v10}, Lio/sentry/android/core/SentryAndroidOptions;->setProfileLifecycle(Lio/sentry/ProfileLifecycle;)V

    .line 520
    :cond_a
    const-string v10, "io.sentry.traces.profiling.start-on-app-start"

    .line 525
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isStartProfilerOnAppStart()Z

    move-result v15

    .line 521
    invoke-static {v4, v6, v10, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v10

    .line 520
    invoke-virtual {v2, v10}, Lio/sentry/android/core/SentryAndroidOptions;->setStartProfilerOnAppStart(Z)V

    .line 527
    const-string v10, "io.sentry.traces.user-interaction.enable"

    .line 528
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableUserInteractionTracing()Z

    move-result v15

    invoke-static {v4, v6, v10, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v10

    .line 527
    invoke-virtual {v2, v10}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableUserInteractionTracing(Z)V

    .line 530
    const-string v10, "io.sentry.traces.time-to-full-display.enable"

    .line 531
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableTimeToFullDisplayTracing()Z

    move-result v15

    invoke-static {v4, v6, v10, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v10

    .line 530
    invoke-virtual {v2, v10}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableTimeToFullDisplayTracing(Z)V

    .line 533
    const-string v10, "io.sentry.traces.idle-timeout"

    move-object/from16 v18, v8

    .end local v8    # "dsn":Ljava/lang/String;
    .local v18, "dsn":Ljava/lang/String;
    const-wide/16 v7, -0x1

    invoke-static {v4, v6, v10, v7, v8}, Lio/sentry/android/core/ManifestMetadataReader;->readLong(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;J)J

    move-result-wide v19

    .line 534
    .local v19, "idleTimeout":J
    cmp-long v7, v19, v7

    if-eqz v7, :cond_b

    .line 535
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Lio/sentry/android/core/SentryAndroidOptions;->setIdleTimeout(Ljava/lang/Long;)V

    .line 539
    :cond_b
    nop

    .line 540
    invoke-static {v4, v6, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readList(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 542
    .local v7, "tracePropagationTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v4, v3}, Lio/sentry/android/core/ManifestMetadataReader;->containsKey(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v7, :cond_c

    .line 543
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setTracePropagationTargets(Ljava/util/List;)V

    goto :goto_2

    .line 544
    :cond_c
    if-eqz v7, :cond_d

    .line 545
    invoke-virtual {v2, v7}, Lio/sentry/android/core/SentryAndroidOptions;->setTracePropagationTargets(Ljava/util/List;)V

    .line 548
    :cond_d
    :goto_2
    const-string v3, "io.sentry.traces.frames-tracking"

    invoke-static {v4, v6, v3, v14}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableFramesTracking(Z)V

    .line 550
    const-string v3, "io.sentry.proguard-uuid"

    .line 551
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v6, v3, v8}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 550
    invoke-virtual {v2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setProguardUuid(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v3

    .line 554
    .local v3, "sdkInfo":Lio/sentry/protocol/SdkVersion;
    if-nez v3, :cond_e

    .line 556
    new-instance v8, Lio/sentry/protocol/SdkVersion;

    invoke-direct {v8, v0, v0}, Lio/sentry/protocol/SdkVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v8

    .line 558
    :cond_e
    const-string v0, "io.sentry.sdk.name"

    invoke-virtual {v3}, Lio/sentry/protocol/SdkVersion;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v6, v0, v8}, Lio/sentry/android/core/ManifestMetadataReader;->readStringNotNull(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/protocol/SdkVersion;->setName(Ljava/lang/String;)V

    .line 559
    const-string v0, "io.sentry.sdk.version"

    invoke-virtual {v3}, Lio/sentry/protocol/SdkVersion;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v6, v0, v8}, Lio/sentry/android/core/ManifestMetadataReader;->readStringNotNull(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/protocol/SdkVersion;->setVersion(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setSdkVersion(Lio/sentry/protocol/SdkVersion;)V

    .line 562
    const-string v0, "io.sentry.send-default-pii"

    .line 563
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isSendDefaultPii()Z

    move-result v8

    invoke-static {v4, v6, v0, v8}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v0

    .line 562
    invoke-virtual {v2, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setSendDefaultPii(Z)V

    .line 568
    const-string v0, "io.sentry.gradle-plugin-integrations"

    .line 569
    invoke-static {v4, v6, v0}, Lio/sentry/android/core/ManifestMetadataReader;->readList(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 570
    .local v0, "integrationsFromGradlePlugin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_f

    .line 571
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 572
    .local v10, "integration":Ljava/lang/String;
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v15

    invoke-virtual {v15, v10}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    .line 573
    .end local v10    # "integration":Ljava/lang/String;
    goto :goto_3

    .line 576
    :cond_f
    const-string v8, "io.sentry.enable-root-check"

    .line 577
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableRootCheck()Z

    move-result v10

    invoke-static {v4, v6, v8, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    .line 576
    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableRootCheck(Z)V

    .line 579
    const-string v8, "io.sentry.send-modules"

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isSendModules()Z

    move-result v10

    invoke-static {v4, v6, v8, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setSendModules(Z)V

    .line 581
    const-string v8, "io.sentry.performance-v2.enable"

    .line 582
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    move-result v10

    invoke-static {v4, v6, v8, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    .line 581
    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setEnablePerformanceV2(Z)V

    .line 584
    const-string v8, "io.sentry.standalone-app-start-tracing.enable"

    .line 589
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableStandaloneAppStartTracing()Z

    move-result v10

    .line 585
    invoke-static {v4, v6, v8, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    .line 584
    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableStandaloneAppStartTracing(Z)V

    .line 591
    const-string v8, "io.sentry.profiling.enable-app-start"

    .line 593
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppStartProfiling()Z

    move-result v10

    .line 592
    invoke-static {v4, v6, v8, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    .line 591
    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppStartProfiling(Z)V

    .line 595
    const-string v8, "io.sentry.profiling.enable-legacy-profiling"

    .line 596
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableLegacyProfiling()Z

    move-result v10

    invoke-static {v4, v6, v8, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    .line 595
    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableLegacyProfiling(Z)V

    .line 598
    const-string v8, "io.sentry.enable-scope-persistence"

    .line 600
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableScopePersistence()Z

    move-result v10

    .line 599
    invoke-static {v4, v6, v8, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    .line 598
    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableScopePersistence(Z)V

    .line 602
    const-string v8, "io.sentry.traces.enable-auto-id-generation"

    .line 607
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoTraceIdGeneration()Z

    move-result v10

    .line 603
    invoke-static {v4, v6, v8, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v8

    .line 602
    invoke-virtual {v2, v8}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAutoTraceIdGeneration(Z)V

    .line 609
    const-string v8, "io.sentry.traces.deadline-timeout"

    .line 610
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getDeadlineTimeout()J

    move-result-wide v14

    invoke-static {v4, v6, v8, v14, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readLong(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;J)J

    move-result-wide v14

    .line 609
    invoke-virtual {v2, v14, v15}, Lio/sentry/android/core/SentryAndroidOptions;->setDeadlineTimeout(J)V

    .line 612
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v8

    invoke-virtual {v8}, Lio/sentry/SentryReplayOptions;->getSessionSampleRate()Ljava/lang/Double;

    move-result-object v8

    if-nez v8, :cond_10

    .line 613
    const-string v8, "io.sentry.session-replay.session-sample-rate"

    .line 614
    invoke-static {v4, v6, v8}, Lio/sentry/android/core/ManifestMetadataReader;->readDouble(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)D

    move-result-wide v14

    .line 615
    .local v14, "sessionSampleRate":D
    cmpl-double v8, v14, v16

    if-eqz v8, :cond_10

    .line 616
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v8

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v10}, Lio/sentry/SentryReplayOptions;->setSessionSampleRate(Ljava/lang/Double;)V

    .line 620
    .end local v14    # "sessionSampleRate":D
    :cond_10
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v8

    invoke-virtual {v8}, Lio/sentry/SentryReplayOptions;->getOnErrorSampleRate()Ljava/lang/Double;

    move-result-object v8

    if-nez v8, :cond_11

    .line 621
    const-string v8, "io.sentry.session-replay.on-error-sample-rate"

    invoke-static {v4, v6, v8}, Lio/sentry/android/core/ManifestMetadataReader;->readDouble(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)D

    move-result-wide v14

    .line 622
    .local v14, "onErrorSampleRate":D
    cmpl-double v8, v14, v16

    if-eqz v8, :cond_11

    .line 623
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v8

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v10}, Lio/sentry/SentryReplayOptions;->setOnErrorSampleRate(Ljava/lang/Double;)V

    .line 627
    .end local v14    # "onErrorSampleRate":D
    :cond_11
    nop

    .line 628
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v8

    const-string v10, "io.sentry.session-replay.mask-all-text"

    .line 629
    const/4 v14, 0x1

    invoke-static {v4, v6, v10, v14}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v15

    invoke-virtual {v8, v15}, Lio/sentry/SentryReplayOptions;->setMaskAllText(Z)V

    .line 631
    nop

    .line 632
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v8

    const-string v14, "io.sentry.session-replay.mask-all-images"

    .line 633
    const/4 v10, 0x1

    invoke-static {v4, v6, v14, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v8, v10}, Lio/sentry/SentryReplayOptions;->setMaskAllImages(Z)V

    .line 635
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v8

    const-string v10, "io.sentry.session-replay.debug"

    const/4 v15, 0x0

    invoke-static {v4, v6, v10, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v8, v10}, Lio/sentry/SentryReplayOptions;->setDebug(Z)V

    .line 637
    const-string v8, "io.sentry.session-replay.screenshot-strategy"

    .line 638
    const/4 v10, 0x0

    invoke-static {v4, v6, v8, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 639
    .local v8, "screenshotStrategyRaw":Ljava/lang/String;
    if-eqz v8, :cond_13

    .line 640
    const-string v14, "canvas"

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 641
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v14

    sget-object v15, Lio/sentry/ScreenshotStrategyType;->CANVAS:Lio/sentry/ScreenshotStrategyType;

    invoke-virtual {v14, v15}, Lio/sentry/SentryReplayOptions;->setScreenshotStrategy(Lio/sentry/ScreenshotStrategyType;)V

    goto :goto_4

    .line 644
    :cond_12
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v14

    sget-object v15, Lio/sentry/ScreenshotStrategyType;->PIXEL_COPY:Lio/sentry/ScreenshotStrategyType;

    invoke-virtual {v14, v15}, Lio/sentry/SentryReplayOptions;->setScreenshotStrategy(Lio/sentry/ScreenshotStrategyType;)V

    .line 648
    :cond_13
    :goto_4
    nop

    .line 649
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v14

    const-string v15, "io.sentry.session-replay.capture-surface-views"

    .line 655
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryReplayOptions;->isCaptureSurfaceViews()Z

    move-result v10

    .line 651
    invoke-static {v4, v6, v15, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v10

    .line 650
    invoke-virtual {v14, v10}, Lio/sentry/SentryReplayOptions;->setCaptureSurfaceViews(Z)V

    .line 658
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v10

    invoke-virtual {v10}, Lio/sentry/SentryReplayOptions;->getNetworkDetailAllowUrls()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 659
    const-string v10, "io.sentry.session-replay.network-detail-allow-urls"

    .line 660
    invoke-static {v4, v6, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readList(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 661
    .local v10, "allowUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_16

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_16

    .line 662
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v14, "filteredUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_15

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 664
    .local v21, "url":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v23

    .line 665
    .local v24, "trimmedUrl":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_14

    .line 666
    move-object/from16 v1, v24

    .end local v24    # "trimmedUrl":Ljava/lang/String;
    .local v1, "trimmedUrl":Ljava/lang/String;
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 665
    .end local v1    # "trimmedUrl":Ljava/lang/String;
    .restart local v24    # "trimmedUrl":Ljava/lang/String;
    :cond_14
    move-object/from16 v1, v24

    .line 668
    .end local v21    # "url":Ljava/lang/String;
    .end local v24    # "trimmedUrl":Ljava/lang/String;
    :goto_6
    move-object/from16 v1, p0

    goto :goto_5

    .line 669
    :cond_15
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 670
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v1

    invoke-virtual {v1, v14}, Lio/sentry/SentryReplayOptions;->setNetworkDetailAllowUrls(Ljava/util/List;)V

    .line 675
    .end local v10    # "allowUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "filteredUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getNetworkDetailDenyUrls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 676
    const-string v1, "io.sentry.session-replay.network-detail-deny-urls"

    .line 677
    invoke-static {v4, v6, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readList(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 678
    .local v1, "denyUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_19

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_19

    .line 679
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v10, "filteredUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 681
    .local v15, "url":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v23, v21

    .line 682
    .local v23, "trimmedUrl":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_17

    .line 683
    move-object/from16 v21, v1

    move-object/from16 v1, v23

    .end local v23    # "trimmedUrl":Ljava/lang/String;
    .local v1, "trimmedUrl":Ljava/lang/String;
    .local v21, "denyUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 682
    .end local v21    # "denyUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "denyUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "trimmedUrl":Ljava/lang/String;
    :cond_17
    move-object/from16 v21, v1

    move-object/from16 v1, v23

    .line 685
    .end local v1    # "denyUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "url":Ljava/lang/String;
    .end local v23    # "trimmedUrl":Ljava/lang/String;
    .restart local v21    # "denyUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_8
    move-object/from16 v1, v21

    goto :goto_7

    .line 686
    .end local v21    # "denyUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "denyUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_18
    move-object/from16 v21, v1

    .end local v1    # "denyUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "denyUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 687
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v1

    invoke-virtual {v1, v10}, Lio/sentry/SentryReplayOptions;->setNetworkDetailDenyUrls(Ljava/util/List;)V

    goto :goto_9

    .line 678
    .end local v10    # "filteredUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "denyUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "denyUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_19
    move-object/from16 v21, v1

    .line 692
    .end local v1    # "denyUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1a
    :goto_9
    nop

    .line 693
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v1

    const-string v10, "io.sentry.session-replay.network-capture-bodies"

    .line 699
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v14

    invoke-virtual {v14}, Lio/sentry/SentryReplayOptions;->isNetworkCaptureBodies()Z

    move-result v14

    .line 695
    invoke-static {v4, v6, v10, v14}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v10

    .line 694
    invoke-virtual {v1, v10}, Lio/sentry/SentryReplayOptions;->setNetworkCaptureBodies(Z)V

    .line 701
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getNetworkRequestHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 702
    invoke-static {}, Lio/sentry/SentryReplayOptions;->getNetworkDetailsDefaultHeaders()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v1, v10, :cond_1e

    .line 703
    const-string v1, "io.sentry.session-replay.network-request-headers"

    .line 704
    invoke-static {v4, v6, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readList(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 705
    .local v1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1d

    .line 706
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .local v10, "filteredHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 708
    .local v15, "header":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v23, v21

    .line 709
    .local v23, "trimmedHeader":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_1b

    .line 710
    move-object/from16 v21, v1

    move-object/from16 v1, v23

    .end local v23    # "trimmedHeader":Ljava/lang/String;
    .local v1, "trimmedHeader":Ljava/lang/String;
    .local v21, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 709
    .end local v21    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "trimmedHeader":Ljava/lang/String;
    :cond_1b
    move-object/from16 v21, v1

    move-object/from16 v1, v23

    .line 712
    .end local v1    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "header":Ljava/lang/String;
    .end local v23    # "trimmedHeader":Ljava/lang/String;
    .restart local v21    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_b
    move-object/from16 v1, v21

    goto :goto_a

    .line 713
    .end local v21    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1c
    move-object/from16 v21, v1

    .end local v1    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 714
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v1

    invoke-virtual {v1, v10}, Lio/sentry/SentryReplayOptions;->setNetworkRequestHeaders(Ljava/util/List;)V

    goto :goto_c

    .line 705
    .end local v10    # "filteredHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d
    move-object/from16 v21, v1

    .line 719
    .end local v1    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1e
    :goto_c
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getNetworkResponseHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 720
    invoke-static {}, Lio/sentry/SentryReplayOptions;->getNetworkDetailsDefaultHeaders()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v1, v10, :cond_22

    .line 721
    const-string v1, "io.sentry.session-replay.network-response-headers"

    .line 722
    invoke-static {v4, v6, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readList(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 723
    .local v1, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_21

    .line 724
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .restart local v10    # "filteredHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_20

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 726
    .restart local v15    # "header":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v23, v21

    .line 727
    .restart local v23    # "trimmedHeader":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_1f

    .line 728
    move-object/from16 v21, v1

    move-object/from16 v1, v23

    .end local v23    # "trimmedHeader":Ljava/lang/String;
    .local v1, "trimmedHeader":Ljava/lang/String;
    .local v21, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 727
    .end local v21    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "trimmedHeader":Ljava/lang/String;
    :cond_1f
    move-object/from16 v21, v1

    move-object/from16 v1, v23

    .line 730
    .end local v1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "header":Ljava/lang/String;
    .end local v23    # "trimmedHeader":Ljava/lang/String;
    .restart local v21    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_e
    move-object/from16 v1, v21

    goto :goto_d

    .line 731
    .end local v21    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_20
    move-object/from16 v21, v1

    .end local v1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    .line 732
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v1

    invoke-virtual {v1, v10}, Lio/sentry/SentryReplayOptions;->setNetworkResponseHeaders(Ljava/util/List;)V

    goto :goto_f

    .line 723
    .end local v10    # "filteredHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_21
    move-object/from16 v21, v1

    .line 737
    .end local v1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_22
    :goto_f
    const-string v1, "io.sentry.ignored-errors"

    invoke-static {v4, v6, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readList(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setIgnoredErrors(Ljava/util/List;)V

    .line 739
    const-string v1, "io.sentry.in-app-includes"

    invoke-static {v4, v6, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readList(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 740
    .local v1, "includes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_23

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_23

    .line 741
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_23

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 742
    .local v14, "include":Ljava/lang/String;
    invoke-virtual {v2, v14}, Lio/sentry/android/core/SentryAndroidOptions;->addInAppInclude(Ljava/lang/String;)V

    .line 743
    .end local v14    # "include":Ljava/lang/String;
    goto :goto_10

    .line 746
    :cond_23
    const-string v10, "io.sentry.in-app-excludes"

    invoke-static {v4, v6, v10}, Lio/sentry/android/core/ManifestMetadataReader;->readList(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 747
    .local v10, "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_24

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_24

    .line 748
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_11
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_24

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 749
    .local v15, "exclude":Ljava/lang/String;
    invoke-virtual {v2, v15}, Lio/sentry/android/core/SentryAndroidOptions;->addInAppExclude(Ljava/lang/String;)V

    .line 750
    .end local v15    # "exclude":Ljava/lang/String;
    goto :goto_11

    .line 753
    :cond_24
    nop

    .line 754
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogs()Lio/sentry/SentryOptions$Logs;

    move-result-object v14

    const-string v15, "io.sentry.logs.enabled"

    .line 755
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogs()Lio/sentry/SentryOptions$Logs;

    move-result-object v21

    move-object/from16 v23, v1

    .end local v1    # "includes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v23, "includes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions$Logs;->isEnabled()Z

    move-result v1

    invoke-static {v4, v6, v15, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v14, v1}, Lio/sentry/SentryOptions$Logs;->setEnabled(Z)V

    .line 757
    nop

    .line 758
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getMetrics()Lio/sentry/SentryOptions$Metrics;

    move-result-object v1

    const-string v14, "io.sentry.metrics.enabled"

    .line 760
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getMetrics()Lio/sentry/SentryOptions$Metrics;

    move-result-object v15

    invoke-virtual {v15}, Lio/sentry/SentryOptions$Metrics;->isEnabled()Z

    move-result v15

    invoke-static {v4, v6, v14, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v14

    .line 759
    invoke-virtual {v1, v14}, Lio/sentry/SentryOptions$Metrics;->setEnabled(Z)V

    .line 762
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    move-result-object v1

    .line 763
    .local v1, "feedbackOptions":Lio/sentry/SentryFeedbackOptions;
    const-string v14, "io.sentry.feedback.is-name-required"

    .line 764
    invoke-virtual {v1}, Lio/sentry/SentryFeedbackOptions;->isNameRequired()Z

    move-result v15

    invoke-static {v4, v6, v14, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v14

    .line 763
    invoke-virtual {v1, v14}, Lio/sentry/SentryFeedbackOptions;->setNameRequired(Z)V

    .line 765
    const-string v14, "io.sentry.feedback.show-name"

    .line 766
    invoke-virtual {v1}, Lio/sentry/SentryFeedbackOptions;->isShowName()Z

    move-result v15

    invoke-static {v4, v6, v14, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v14

    .line 765
    invoke-virtual {v1, v14}, Lio/sentry/SentryFeedbackOptions;->setShowName(Z)V

    .line 767
    const-string v14, "io.sentry.feedback.is-email-required"

    .line 768
    invoke-virtual {v1}, Lio/sentry/SentryFeedbackOptions;->isEmailRequired()Z

    move-result v15

    invoke-static {v4, v6, v14, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v14

    .line 767
    invoke-virtual {v1, v14}, Lio/sentry/SentryFeedbackOptions;->setEmailRequired(Z)V

    .line 769
    const-string v14, "io.sentry.feedback.show-email"

    .line 770
    invoke-virtual {v1}, Lio/sentry/SentryFeedbackOptions;->isShowEmail()Z

    move-result v15

    invoke-static {v4, v6, v14, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v14

    .line 769
    invoke-virtual {v1, v14}, Lio/sentry/SentryFeedbackOptions;->setShowEmail(Z)V

    .line 771
    const-string v14, "io.sentry.feedback.use-sentry-user"

    .line 773
    invoke-virtual {v1}, Lio/sentry/SentryFeedbackOptions;->isUseSentryUser()Z

    move-result v15

    .line 772
    invoke-static {v4, v6, v14, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v14

    .line 771
    invoke-virtual {v1, v14}, Lio/sentry/SentryFeedbackOptions;->setUseSentryUser(Z)V

    .line 774
    const-string v14, "io.sentry.feedback.show-branding"

    .line 775
    invoke-virtual {v1}, Lio/sentry/SentryFeedbackOptions;->isShowBranding()Z

    move-result v15

    invoke-static {v4, v6, v14, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v14

    .line 774
    invoke-virtual {v1, v14}, Lio/sentry/SentryFeedbackOptions;->setShowBranding(Z)V

    .line 776
    const-string v14, "io.sentry.feedback.use-shake-gesture"

    .line 778
    invoke-virtual {v1}, Lio/sentry/SentryFeedbackOptions;->isUseShakeGesture()Z

    move-result v15

    .line 777
    invoke-static {v4, v6, v14, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v14

    .line 776
    invoke-virtual {v1, v14}, Lio/sentry/SentryFeedbackOptions;->setUseShakeGesture(Z)V

    .line 779
    const-string v14, "io.sentry.feedback.enable-attach-screenshot"

    .line 784
    invoke-virtual {v1}, Lio/sentry/SentryFeedbackOptions;->isEnableAttachScreenshot()Z

    move-result v15

    .line 780
    invoke-static {v4, v6, v14, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v14

    .line 779
    invoke-virtual {v1, v14}, Lio/sentry/SentryFeedbackOptions;->setEnableAttachScreenshot(Z)V

    .line 786
    const-string v14, "io.sentry.strict-trace-continuation.enabled"

    .line 788
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isStrictTraceContinuation()Z

    move-result v15

    .line 787
    invoke-static {v4, v6, v14, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v14

    .line 786
    invoke-virtual {v2, v14}, Lio/sentry/android/core/SentryAndroidOptions;->setStrictTraceContinuation(Z)V

    .line 790
    const-string v14, "io.sentry.org-id"

    const/4 v15, 0x0

    invoke-static {v4, v6, v14, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 791
    .local v14, "orgId":Ljava/lang/String;
    if-eqz v14, :cond_25

    .line 792
    invoke-virtual {v2, v14}, Lio/sentry/android/core/SentryAndroidOptions;->setOrgId(Ljava/lang/String;)V

    .line 795
    :cond_25
    const-string v15, "io.sentry.spotlight.enable"

    .line 796
    move-object/from16 v21, v1

    .end local v1    # "feedbackOptions":Lio/sentry/SentryFeedbackOptions;
    .local v21, "feedbackOptions":Lio/sentry/SentryFeedbackOptions;
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSpotlight()Z

    move-result v1

    invoke-static {v4, v6, v15, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v1

    .line 795
    invoke-virtual {v2, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableSpotlight(Z)V

    .line 798
    const-string v1, "io.sentry.spotlight.url"

    .line 799
    const/4 v15, 0x0

    invoke-static {v4, v6, v1, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 800
    .local v1, "spotlightUrl":Ljava/lang/String;
    if-eqz v1, :cond_26

    .line 801
    invoke-virtual {v2, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setSpotlightConnectionUrl(Ljava/lang/String;)V

    .line 805
    :cond_26
    nop

    .line 806
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getScreenshot()Lio/sentry/android/core/SentryScreenshotOptions;

    move-result-object v15

    move-object/from16 v22, v1

    .end local v1    # "spotlightUrl":Ljava/lang/String;
    .local v22, "spotlightUrl":Ljava/lang/String;
    const-string v1, "io.sentry.screenshot.mask-all-text"

    .line 807
    move-object/from16 v24, v3

    const/4 v3, 0x0

    .end local v3    # "sdkInfo":Lio/sentry/protocol/SdkVersion;
    .local v24, "sdkInfo":Lio/sentry/protocol/SdkVersion;
    invoke-static {v4, v6, v1, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v1

    move-object v3, v15

    invoke-virtual {v3, v1}, Lio/sentry/android/core/SentryScreenshotOptions;->setMaskAllText(Z)V

    .line 808
    nop

    .line 809
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getScreenshot()Lio/sentry/android/core/SentryScreenshotOptions;

    move-result-object v1

    const-string v3, "io.sentry.screenshot.mask-all-images"

    .line 810
    const/4 v15, 0x0

    invoke-static {v4, v6, v3, v15}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Lio/sentry/android/core/SentryScreenshotOptions;->setMaskAllImages(Z)V

    .line 812
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrProfilingSampleRate()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_27

    .line 813
    const-string v1, "io.sentry.anr.profiling.sample-rate"

    .line 814
    invoke-static {v4, v6, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readDouble(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)D

    move-result-wide v25

    .line 815
    .local v25, "anrProfilingSampleRate":D
    cmpl-double v1, v25, v16

    if-eqz v1, :cond_27

    .line 816
    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrProfilingSampleRate(Ljava/lang/Double;)V

    .line 820
    .end local v25    # "anrProfilingSampleRate":D
    :cond_27
    const-string v1, "io.sentry.anr.enable-fingerprinting"

    .line 822
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAnrFingerprinting()Z

    move-result v3

    .line 821
    invoke-static {v4, v6, v1, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v1

    .line 820
    invoke-virtual {v2, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAnrFingerprinting(Z)V

    .line 824
    nop

    .line 825
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getDataCollection()Lio/sentry/DataCollection;

    move-result-object v1

    invoke-static {v4, v6, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readDataCollection(Ljava/lang/Object;Lio/sentry/ILogger;Lio/sentry/DataCollection;)Lio/sentry/DataCollection;

    move-result-object v1

    .line 826
    .local v1, "dataCollection":Lio/sentry/DataCollection;
    if-eqz v1, :cond_28

    .line 827
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getDataCollection()Lio/sentry/DataCollection;

    move-result-object v3

    invoke-static {v3, v1}, Lio/sentry/android/core/ManifestMetadataReader;->mergeDataCollection(Lio/sentry/DataCollection;Lio/sentry/DataCollection;)V

    .line 830
    .end local v0    # "integrationsFromGradlePlugin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "dataCollection":Lio/sentry/DataCollection;
    .end local v7    # "tracePropagationTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "screenshotStrategyRaw":Ljava/lang/String;
    .end local v9    # "profileLifecycle":Ljava/lang/String;
    .end local v10    # "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "enabled":Z
    .end local v12    # "nativeSdkName":Ljava/lang/String;
    .end local v13    # "isAutoInitEnabled":Z
    .end local v14    # "orgId":Ljava/lang/String;
    .end local v18    # "dsn":Ljava/lang/String;
    .end local v19    # "idleTimeout":J
    .end local v21    # "feedbackOptions":Lio/sentry/SentryFeedbackOptions;
    .end local v22    # "spotlightUrl":Ljava/lang/String;
    .end local v23    # "includes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "sdkInfo":Lio/sentry/protocol/SdkVersion;
    :cond_28
    nop

    .line 831
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "Retrieving configuration from AndroidManifest.xml"

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/Object;

    .line 832
    invoke-interface {v0, v1, v3, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 838
    .end local v4    # "metadata":Ljava/lang/Object;
    .end local v6    # "logger":Lio/sentry/ILogger;
    goto :goto_13

    .line 833
    :catchall_0
    move-exception v0

    goto :goto_12

    :catchall_1
    move-exception v0

    move-object/from16 v5, p2

    .line 834
    .local v0, "e":Ljava/lang/Throwable;
    :goto_12
    nop

    .line 835
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 836
    const-string v4, "Failed to read configuration from android manifest metadata."

    invoke-interface {v1, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 839
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_13
    return-void
.end method

.method private static containsKey(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1
    .param p0, "metadata"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;

    .line 1152
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1153
    move-object v0, p0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1154
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1152
    :goto_0
    return v0
.end method

.method private static getMetadata(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/Object;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 1141
    sget-object v0, Lio/sentry/android/core/ManifestMetadataReader;->manifestMetadata:Ljava/util/Map;

    .line 1142
    .local v0, "injected":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 1143
    return-object v0

    .line 1145
    :cond_0
    nop

    .line 1147
    if-eqz p2, :cond_1

    move-object v1, p2

    goto :goto_0

    :cond_1
    new-instance v1, Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {v1, p1}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    .line 1146
    :goto_0
    invoke-static {p0, v1}, Lio/sentry/android/core/ContextUtils;->getApplicationInfo(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1148
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method static isAutoInit(Landroid/content/Context;Lio/sentry/ILogger;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 1117
    const-string v0, "The application context is required."

    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1119
    const/4 v0, 0x1

    .line 1121
    .local v0, "autoInit":Z
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lio/sentry/android/core/ManifestMetadataReader;->getMetadata(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/Object;

    move-result-object v1

    .line 1122
    .local v1, "metadata":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1123
    const-string v2, "io.sentry.auto-init"

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 1127
    .end local v1    # "metadata":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 1125
    :catchall_0
    move-exception v1

    .line 1126
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to read auto-init from android manifest metadata."

    invoke-interface {p1, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1128
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method

.method private static mergeDataCollection(Lio/sentry/DataCollection;Lio/sentry/DataCollection;)V
    .locals 2
    .param p0, "target"    # Lio/sentry/DataCollection;
    .param p1, "source"    # Lio/sentry/DataCollection;

    .line 918
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getUserInfo()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 919
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getUserInfo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/DataCollection;->setUserInfo(Ljava/lang/Boolean;)V

    .line 921
    :cond_0
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getHttpBodies()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 922
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getHttpBodies()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/DataCollection;->setHttpBodies(Ljava/util/Set;)V

    .line 924
    :cond_1
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getCookies()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 925
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getCookies()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/DataCollection;->setCookies(Lio/sentry/KeyValueCollectionBehavior;)V

    .line 927
    :cond_2
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection$HttpHeaders;->getRequest()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 928
    invoke-virtual {p0}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/DataCollection$HttpHeaders;->getRequest()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/DataCollection$HttpHeaders;->setRequest(Lio/sentry/KeyValueCollectionBehavior;)V

    .line 930
    :cond_3
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection$HttpHeaders;->getResponse()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 931
    invoke-virtual {p0}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/DataCollection$HttpHeaders;->getResponse()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/DataCollection$HttpHeaders;->setResponse(Lio/sentry/KeyValueCollectionBehavior;)V

    .line 933
    :cond_4
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getUrlQueryParams()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 934
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getUrlQueryParams()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/DataCollection;->setUrlQueryParams(Lio/sentry/KeyValueCollectionBehavior;)V

    .line 936
    :cond_5
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection$Graphql;->getDocument()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 937
    invoke-virtual {p0}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/DataCollection$Graphql;->getDocument()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/DataCollection$Graphql;->setDocument(Ljava/lang/Boolean;)V

    .line 939
    :cond_6
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection$Graphql;->getVariables()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 940
    invoke-virtual {p0}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/DataCollection$Graphql;->getVariables()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/DataCollection$Graphql;->setVariables(Ljava/lang/Boolean;)V

    .line 942
    :cond_7
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getDatabaseQueryData()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 943
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getDatabaseQueryData()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/DataCollection;->setDatabaseQueryData(Ljava/lang/Boolean;)V

    .line 945
    :cond_8
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getFilePaths()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 946
    invoke-virtual {p1}, Lio/sentry/DataCollection;->getFilePaths()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/DataCollection;->setFilePaths(Ljava/lang/Boolean;)V

    .line 948
    :cond_9
    return-void
.end method

.method private static readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "metadata"    # Ljava/lang/Object;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 1000
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1001
    move-object v0, p0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, "value":Z
    goto :goto_1

    .line 1003
    .end local v0    # "value":Z
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1004
    .local v0, "raw":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, p3

    :goto_0
    move v0, v1

    .line 1006
    .local v0, "value":Z
    :goto_1
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-interface {p1, v1}, Lio/sentry/ILogger;->isEnabled(Lio/sentry/SentryLevel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1007
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1009
    :cond_2
    return v0
.end method

.method private static readDataCollection(Ljava/lang/Object;Lio/sentry/ILogger;Lio/sentry/DataCollection;)Lio/sentry/DataCollection;
    .locals 8
    .param p0, "metadata"    # Ljava/lang/Object;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "currentDataCollection"    # Lio/sentry/DataCollection;

    .line 845
    new-instance v0, Lio/sentry/DataCollection;

    invoke-direct {v0}, Lio/sentry/DataCollection;-><init>()V

    .line 847
    .local v0, "dataCollection":Lio/sentry/DataCollection;
    const-string v1, "io.sentry.data-collection.user-info"

    invoke-static {p0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->containsKey(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 848
    invoke-static {p0, p1, v1, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/DataCollection;->setUserInfo(Ljava/lang/Boolean;)V

    .line 851
    :cond_0
    const-string v1, "io.sentry.data-collection.http-bodies"

    invoke-static {p0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->containsKey(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 852
    invoke-static {p0, p1}, Lio/sentry/android/core/ManifestMetadataReader;->readHttpBodyTypes(Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/DataCollection;->setHttpBodies(Ljava/util/Set;)V

    .line 855
    :cond_1
    nop

    .line 857
    invoke-virtual {p2}, Lio/sentry/DataCollection;->getCookies()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v1

    .line 856
    const-string v2, "io.sentry.data-collection.cookies"

    invoke-static {p0, p1, v2, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readKeyValueCollectionBehavior(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Lio/sentry/KeyValueCollectionBehavior;)Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v1

    .line 858
    .local v1, "cookies":Lio/sentry/KeyValueCollectionBehavior;
    if-eqz v1, :cond_2

    .line 859
    invoke-virtual {v0, v1}, Lio/sentry/DataCollection;->setCookies(Lio/sentry/KeyValueCollectionBehavior;)V

    .line 862
    :cond_2
    nop

    .line 867
    invoke-virtual {p2}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/DataCollection$HttpHeaders;->getRequest()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v2

    .line 863
    const-string v4, "io.sentry.data-collection.http-headers.request"

    invoke-static {p0, p1, v4, v2}, Lio/sentry/android/core/ManifestMetadataReader;->readKeyValueCollectionBehavior(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Lio/sentry/KeyValueCollectionBehavior;)Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v2

    .line 868
    .local v2, "requestHeaders":Lio/sentry/KeyValueCollectionBehavior;
    if-eqz v2, :cond_3

    .line 869
    invoke-virtual {v0}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v4

    invoke-virtual {v4, v2}, Lio/sentry/DataCollection$HttpHeaders;->setRequest(Lio/sentry/KeyValueCollectionBehavior;)V

    .line 872
    :cond_3
    nop

    .line 877
    invoke-virtual {p2}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/DataCollection$HttpHeaders;->getResponse()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v4

    .line 873
    const-string v5, "io.sentry.data-collection.http-headers.response"

    invoke-static {p0, p1, v5, v4}, Lio/sentry/android/core/ManifestMetadataReader;->readKeyValueCollectionBehavior(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Lio/sentry/KeyValueCollectionBehavior;)Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v4

    .line 878
    .local v4, "responseHeaders":Lio/sentry/KeyValueCollectionBehavior;
    if-eqz v4, :cond_4

    .line 879
    invoke-virtual {v0}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/sentry/DataCollection$HttpHeaders;->setResponse(Lio/sentry/KeyValueCollectionBehavior;)V

    .line 882
    :cond_4
    nop

    .line 887
    invoke-virtual {p2}, Lio/sentry/DataCollection;->getUrlQueryParams()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v5

    .line 883
    const-string v6, "io.sentry.data-collection.url-query-params"

    invoke-static {p0, p1, v6, v5}, Lio/sentry/android/core/ManifestMetadataReader;->readKeyValueCollectionBehavior(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Lio/sentry/KeyValueCollectionBehavior;)Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v5

    .line 888
    .local v5, "urlQueryParams":Lio/sentry/KeyValueCollectionBehavior;
    if-eqz v5, :cond_5

    .line 889
    invoke-virtual {v0, v5}, Lio/sentry/DataCollection;->setUrlQueryParams(Lio/sentry/KeyValueCollectionBehavior;)V

    .line 892
    :cond_5
    const-string v6, "io.sentry.data-collection.graphql.document"

    invoke-static {p0, v6}, Lio/sentry/android/core/ManifestMetadataReader;->containsKey(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 893
    nop

    .line 894
    invoke-virtual {v0}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v7

    .line 895
    invoke-static {p0, p1, v6, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v6}, Lio/sentry/DataCollection$Graphql;->setDocument(Ljava/lang/Boolean;)V

    .line 898
    :cond_6
    const-string v6, "io.sentry.data-collection.graphql.variables"

    invoke-static {p0, v6}, Lio/sentry/android/core/ManifestMetadataReader;->containsKey(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 899
    nop

    .line 900
    invoke-virtual {v0}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v7

    .line 901
    invoke-static {p0, p1, v6, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v6}, Lio/sentry/DataCollection$Graphql;->setVariables(Ljava/lang/Boolean;)V

    .line 904
    :cond_7
    const-string v6, "io.sentry.data-collection.database-query-data"

    invoke-static {p0, v6}, Lio/sentry/android/core/ManifestMetadataReader;->containsKey(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 905
    nop

    .line 906
    invoke-static {p0, p1, v6, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 905
    invoke-virtual {v0, v6}, Lio/sentry/DataCollection;->setDatabaseQueryData(Ljava/lang/Boolean;)V

    .line 909
    :cond_8
    const-string v6, "io.sentry.data-collection.file-paths"

    invoke-static {p0, v6}, Lio/sentry/android/core/ManifestMetadataReader;->containsKey(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 910
    invoke-static {p0, p1, v6, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/sentry/DataCollection;->setFilePaths(Ljava/lang/Boolean;)V

    .line 913
    :cond_9
    invoke-virtual {v0}, Lio/sentry/DataCollection;->isExplicitlyConfigured()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v3, v0

    goto :goto_0

    :cond_a
    const/4 v3, 0x0

    :goto_0
    return-object v3
.end method

.method private static readDouble(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)D
    .locals 5
    .param p0, "metadata"    # Ljava/lang/Object;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "key"    # Ljava/lang/String;

    .line 1070
    instance-of v0, p0, Landroid/os/Bundle;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    if-eqz v0, :cond_1

    .line 1072
    move-object v0, p0

    check-cast v0, Landroid/os/Bundle;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, p2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v3

    .line 1073
    .local v3, "bundleValue":D
    cmpl-double v0, v3, v1

    if-nez v0, :cond_0

    .line 1074
    move-object v0, p0

    check-cast v0, Landroid/os/Bundle;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v3

    .line 1076
    :cond_0
    nop

    .line 1077
    .local v3, "value":D
    goto :goto_1

    .line 1078
    .end local v3    # "value":D
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1080
    .local v0, "raw":Ljava/lang/Object;
    instance-of v3, v0, Ljava/lang/Float;

    if-eqz v3, :cond_2

    .line 1081
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    .line 1082
    :cond_2
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v1

    :cond_3
    :goto_0
    move-wide v3, v1

    .line 1084
    .end local v0    # "raw":Ljava/lang/Object;
    .restart local v3    # "value":D
    :goto_1
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-interface {p1, v0}, Lio/sentry/ILogger;->isEnabled(Lio/sentry/SentryLevel;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1085
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1087
    :cond_4
    return-wide v3
.end method

.method private static readHttpBodyTypes(Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/util/Set;
    .locals 5
    .param p0, "metadata"    # Ljava/lang/Object;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lio/sentry/ILogger;",
            ")",
            "Ljava/util/Set<",
            "Lio/sentry/HttpBodyType;",
            ">;"
        }
    .end annotation

    .line 952
    nop

    .line 953
    const-string v0, "io.sentry.data-collection.http-bodies"

    invoke-static {p0, p1, v0}, Lio/sentry/android/core/ManifestMetadataReader;->readList(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 954
    .local v0, "bodyTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 958
    :cond_0
    const-class v1, Lio/sentry/HttpBodyType;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 959
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Lio/sentry/HttpBodyType;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 960
    .local v3, "bodyType":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/sentry/HttpBodyType;->valueOf(Ljava/lang/String;)Lio/sentry/HttpBodyType;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 961
    .end local v3    # "bodyType":Ljava/lang/String;
    goto :goto_0

    .line 962
    :cond_1
    return-object v1

    .line 955
    .end local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Lio/sentry/HttpBodyType;>;"
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private static readKeyValueCollectionBehavior(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Lio/sentry/KeyValueCollectionBehavior;)Lio/sentry/KeyValueCollectionBehavior;
    .locals 5
    .param p0, "metadata"    # Ljava/lang/Object;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "currentBehavior"    # Lio/sentry/KeyValueCollectionBehavior;

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 971
    .local v0, "modeKey":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".terms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 972
    .local v1, "termsKey":Ljava/lang/String;
    invoke-static {p0, v0}, Lio/sentry/android/core/ManifestMetadataReader;->containsKey(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {p0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->containsKey(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 973
    return-object v3

    .line 976
    :cond_0
    new-instance v2, Lio/sentry/KeyValueCollectionBehavior;

    invoke-direct {v2}, Lio/sentry/KeyValueCollectionBehavior;-><init>()V

    .line 977
    .local v2, "behavior":Lio/sentry/KeyValueCollectionBehavior;
    if-eqz p3, :cond_1

    .line 978
    invoke-virtual {p3}, Lio/sentry/KeyValueCollectionBehavior;->getMode()Lio/sentry/KeyValueCollectionBehavior$Mode;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/sentry/KeyValueCollectionBehavior;->setMode(Lio/sentry/KeyValueCollectionBehavior$Mode;)V

    .line 979
    invoke-virtual {p3}, Lio/sentry/KeyValueCollectionBehavior;->getTerms()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/sentry/KeyValueCollectionBehavior;->setTerms(Ljava/util/List;)V

    .line 981
    :cond_1
    invoke-static {p0, v0}, Lio/sentry/android/core/ManifestMetadataReader;->containsKey(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 982
    invoke-static {p0, p1, v0, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 983
    .local v3, "mode":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 984
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/sentry/KeyValueCollectionBehavior$Mode;->valueOf(Ljava/lang/String;)Lio/sentry/KeyValueCollectionBehavior$Mode;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/sentry/KeyValueCollectionBehavior;->setMode(Lio/sentry/KeyValueCollectionBehavior$Mode;)V

    .line 987
    .end local v3    # "mode":Ljava/lang/String;
    :cond_2
    invoke-static {p0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->containsKey(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 988
    invoke-static {p0, p1, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readList(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 989
    .local v3, "terms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_3
    move-object v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Lio/sentry/KeyValueCollectionBehavior;->setTerms(Ljava/util/List;)V

    .line 991
    .end local v3    # "terms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-object v2
.end method

.method private static readList(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "metadata"    # Ljava/lang/Object;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lio/sentry/ILogger;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1051
    instance-of v0, p0, Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1052
    move-object v0, p0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "value":Ljava/lang/String;
    goto :goto_1

    .line 1054
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1055
    .local v0, "raw":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    move-object v0, v2

    .line 1057
    .local v0, "value":Ljava/lang/String;
    :goto_1
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-interface {p1, v2}, Lio/sentry/ILogger;->isEnabled(Lio/sentry/SentryLevel;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1058
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1060
    :cond_2
    if-eqz v0, :cond_3

    .line 1061
    const-string v1, ","

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1063
    :cond_3
    return-object v1
.end method

.method private static readLong(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;J)J
    .locals 5
    .param p0, "metadata"    # Ljava/lang/Object;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .line 1096
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1098
    move-object v0, p0

    check-cast v0, Landroid/os/Bundle;

    long-to-int v1, p3

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .local v0, "value":J
    goto :goto_1

    .line 1100
    .end local v0    # "value":J
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1101
    .local v0, "raw":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    :cond_1
    move-wide v1, p3

    :goto_0
    move-wide v0, v1

    .line 1103
    .local v0, "value":J
    :goto_1
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-interface {p1, v2}, Lio/sentry/ILogger;->isEnabled(Lio/sentry/SentryLevel;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1104
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1106
    :cond_2
    return-wide v0
.end method

.method private static readString(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "metadata"    # Ljava/lang/Object;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 1018
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1019
    move-object v0, p0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "value":Ljava/lang/String;
    goto :goto_1

    .line 1021
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1022
    .local v0, "raw":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, p3

    :goto_0
    move-object v0, v1

    .line 1024
    .local v0, "value":Ljava/lang/String;
    :goto_1
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-interface {p1, v1}, Lio/sentry/ILogger;->isEnabled(Lio/sentry/SentryLevel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1025
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1027
    :cond_2
    return-object v0
.end method

.method private static readStringNotNull(Ljava/lang/Object;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "metadata"    # Ljava/lang/Object;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 1036
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1037
    move-object v0, p0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "value":Ljava/lang/String;
    goto :goto_1

    .line 1039
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1040
    .local v0, "raw":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, p3

    :goto_0
    move-object v0, v1

    .line 1042
    .local v0, "value":Ljava/lang/String;
    :goto_1
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-interface {p1, v1}, Lio/sentry/ILogger;->isEnabled(Lio/sentry/SentryLevel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1043
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1045
    :cond_2
    return-object v0
.end method
