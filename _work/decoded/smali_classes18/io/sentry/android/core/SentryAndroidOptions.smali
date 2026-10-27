.class public final Lio/sentry/android/core/SentryAndroidOptions;
.super Lio/sentry/SentryOptions;
.source "SentryAndroidOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;,
        Lio/sentry/android/core/SentryAndroidOptions$AndroidUserFeedbackFormHandler;
    }
.end annotation


# instance fields
.field private anrEnabled:Z

.field private anrProfilingSampleRate:Ljava/lang/Double;

.field private anrReportInDebug:Z

.field private anrTimeoutIntervalMillis:J

.field private attachAnrThreadDump:Z

.field private attachRawTombstone:Z

.field private attachScreenshot:Z

.field private attachViewHierarchy:Z

.field private beforeScreenshotCaptureCallback:Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

.field private beforeViewHierarchyCaptureCallback:Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

.field private collectAdditionalContext:Z

.field private collectExternalStorageContext:Z

.field private debugImagesLoader:Lio/sentry/android/core/IDebugImagesLoader;

.field private volatile deviceInfoUtil:Lio/sentry/android/core/DeviceInfoUtil;

.field private enableActivityLifecycleBreadcrumbs:Z

.field private enableActivityLifecycleTracingAutoFinish:Z

.field private enableAnrFingerprinting:Z

.field private enableAppComponentBreadcrumbs:Z

.field private enableAppLifecycleBreadcrumbs:Z

.field private enableAutoActivityLifecycleTracing:Z

.field private enableAutoTraceIdGeneration:Z

.field private enableFramesTracking:Z

.field private enableNdk:Z

.field private enableNdkAppHangTracking:Z

.field private enableNetworkEventBreadcrumbs:Z

.field private enablePerformanceV2:Z

.field private enableRootCheck:Z

.field private enableScopeSync:Z

.field private enableStandaloneAppStartTracing:Z

.field private enableSystemEventBreadcrumbs:Z

.field private enableSystemEventBreadcrumbsExtras:Z

.field private enableTombstone:Z

.field private frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field private memoryLimiterEnabled:Z

.field private nativeSdkName:Ljava/lang/String;

.field private ndkAppHangTimeoutIntervalMillis:J

.field private ndkHandlerStrategy:Lio/sentry/android/core/NdkHandlerStrategy;

.field private reportHistoricalAnrs:Z

.field private reportHistoricalMemoryLimiterExits:Z

.field private reportHistoricalTombstones:Z

.field private final screenshot:Lio/sentry/android/core/SentryScreenshotOptions;

.field private final startupCrashDurationThresholdMillis:J

.field private startupCrashFlushTimeoutMillis:J

.field private tombstoneMergeTimeThresholdMillis:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 332
    invoke-direct {p0}, Lio/sentry/SentryOptions;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrEnabled:Z

    .line 39
    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrTimeoutIntervalMillis:J

    .line 42
    const/4 v3, 0x0

    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrReportInDebug:Z

    .line 53
    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNdkAppHangTracking:Z

    .line 58
    iput-wide v1, p0, Lio/sentry/android/core/SentryAndroidOptions;->ndkAppHangTimeoutIntervalMillis:J

    .line 64
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleBreadcrumbs:Z

    .line 67
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppLifecycleBreadcrumbs:Z

    .line 70
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableSystemEventBreadcrumbs:Z

    .line 73
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppComponentBreadcrumbs:Z

    .line 76
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNetworkEventBreadcrumbs:Z

    .line 109
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAutoActivityLifecycleTracing:Z

    .line 120
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleTracingAutoFinish:Z

    .line 123
    invoke-static {}, Lio/sentry/android/core/NoOpDebugImagesLoader;->getInstance()Lio/sentry/android/core/NoOpDebugImagesLoader;

    move-result-object v4

    iput-object v4, p0, Lio/sentry/android/core/SentryAndroidOptions;->debugImagesLoader:Lio/sentry/android/core/IDebugImagesLoader;

    .line 143
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->collectAdditionalContext:Z

    .line 146
    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->collectExternalStorageContext:Z

    .line 160
    iput-wide v1, p0, Lio/sentry/android/core/SentryAndroidOptions;->startupCrashFlushTimeoutMillis:J

    .line 171
    const-wide/16 v4, 0x7d0

    iput-wide v4, p0, Lio/sentry/android/core/SentryAndroidOptions;->startupCrashDurationThresholdMillis:J

    .line 173
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableFramesTracking:Z

    .line 175
    const/4 v4, 0x0

    iput-object v4, p0, Lio/sentry/android/core/SentryAndroidOptions;->nativeSdkName:Ljava/lang/String;

    .line 181
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableRootCheck:Z

    .line 188
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNdk:Z

    .line 190
    sget-object v4, Lio/sentry/android/core/NdkHandlerStrategy;->SENTRY_HANDLER_STRATEGY_DEFAULT:Lio/sentry/android/core/NdkHandlerStrategy;

    iput-object v4, p0, Lio/sentry/android/core/SentryAndroidOptions;->ndkHandlerStrategy:Lio/sentry/android/core/NdkHandlerStrategy;

    .line 198
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableScopeSync:Z

    .line 204
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAutoTraceIdGeneration:Z

    .line 207
    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableSystemEventBreadcrumbsExtras:Z

    .line 256
    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->reportHistoricalAnrs:Z

    .line 267
    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->reportHistoricalTombstones:Z

    .line 277
    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->memoryLimiterEnabled:Z

    .line 286
    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->reportHistoricalMemoryLimiterExits:Z

    .line 292
    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachAnrThreadDump:Z

    .line 298
    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachRawTombstone:Z

    .line 300
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enablePerformanceV2:Z

    .line 302
    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableStandaloneAppStartTracing:Z

    .line 306
    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableTombstone:Z

    .line 313
    iput-wide v1, p0, Lio/sentry/android/core/SentryAndroidOptions;->tombstoneMergeTimeThresholdMillis:J

    .line 322
    new-instance v1, Lio/sentry/android/core/SentryScreenshotOptions;

    invoke-direct {v1}, Lio/sentry/android/core/SentryScreenshotOptions;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/SentryAndroidOptions;->screenshot:Lio/sentry/android/core/SentryScreenshotOptions;

    .line 330
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAnrFingerprinting:Z

    .line 333
    const-string v0, "sentry.java.android/8.61.1"

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setSentryClientName(Ljava/lang/String;)V

    .line 334
    invoke-direct {p0}, Lio/sentry/android/core/SentryAndroidOptions;->createSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setSdkVersion(Lio/sentry/protocol/SdkVersion;)V

    .line 335
    invoke-virtual {p0, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachServerName(Z)V

    .line 336
    return-void
.end method

.method private createSdkVersion()Lio/sentry/protocol/SdkVersion;
    .locals 5

    .line 339
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    .line 341
    .local v0, "sdkVersion":Lio/sentry/protocol/SdkVersion;
    const-string v1, "sentry.java.android"

    .line 342
    .local v1, "name":Ljava/lang/String;
    const-string v2, "8.61.1"

    .line 343
    .local v2, "version":Ljava/lang/String;
    const-string v3, "sentry.java.android"

    const-string v4, "8.61.1"

    invoke-static {v0, v3, v4}, Lio/sentry/protocol/SdkVersion;->updateSdkVersion(Lio/sentry/protocol/SdkVersion;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    .line 345
    const-string v3, "maven:io.sentry:sentry-android-core"

    invoke-virtual {v0, v3, v4}, Lio/sentry/protocol/SdkVersion;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-object v0
.end method


# virtual methods
.method public enableAllAutoBreadcrumbs(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 514
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleBreadcrumbs:Z

    .line 515
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppComponentBreadcrumbs:Z

    .line 516
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableSystemEventBreadcrumbs:Z

    .line 517
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppLifecycleBreadcrumbs:Z

    .line 518
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNetworkEventBreadcrumbs:Z

    .line 519
    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableUserInteractionBreadcrumbs(Z)V

    .line 520
    return-void
.end method

.method public getAnrProfilingSampleRate()Ljava/lang/Double;
    .locals 1

    .line 960
    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrProfilingSampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getAnrTimeoutIntervalMillis()J
    .locals 2

    .line 374
    iget-wide v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrTimeoutIntervalMillis:J

    return-wide v0
.end method

.method public getBeforeScreenshotCaptureCallback()Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;
    .locals 1

    .line 673
    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->beforeScreenshotCaptureCallback:Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

    return-object v0
.end method

.method public getBeforeViewHierarchyCaptureCallback()Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;
    .locals 1

    .line 688
    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->beforeViewHierarchyCaptureCallback:Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

    return-object v0
.end method

.method public getDebugImagesLoader()Lio/sentry/android/core/IDebugImagesLoader;
    .locals 1

    .line 528
    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->debugImagesLoader:Lio/sentry/android/core/IDebugImagesLoader;

    return-object v0
.end method

.method public getFrameMetricsCollector()Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;
    .locals 1

    .line 918
    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    return-object v0
.end method

.method public getMonotonicTicker()Lio/sentry/time/MonotonicTicker;
    .locals 1

    .line 1018
    invoke-static {}, Lio/sentry/android/core/internal/time/AndroidMonotonicTicker;->getInstance()Lio/sentry/time/MonotonicTicker;

    move-result-object v0

    return-object v0
.end method

.method public getNativeSdkName()Ljava/lang/String;
    .locals 1

    .line 661
    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->nativeSdkName:Ljava/lang/String;

    return-object v0
.end method

.method public getNdkAppHangTimeoutIntervalMillis()J
    .locals 2

    .line 435
    iget-wide v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->ndkAppHangTimeoutIntervalMillis:J

    return-wide v0
.end method

.method public getNdkHandlerStrategy()I
    .locals 1

    .line 651
    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->ndkHandlerStrategy:Lio/sentry/android/core/NdkHandlerStrategy;

    invoke-virtual {v0}, Lio/sentry/android/core/NdkHandlerStrategy;->getValue()I

    move-result v0

    return v0
.end method

.method getOrCreateDeviceInfoUtil(Landroid/content/Context;)Lio/sentry/android/core/DeviceInfoUtil;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 211
    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->deviceInfoUtil:Lio/sentry/android/core/DeviceInfoUtil;

    if-nez v0, :cond_2

    .line 212
    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 213
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/SentryAndroidOptions;->deviceInfoUtil:Lio/sentry/android/core/DeviceInfoUtil;

    if-nez v1, :cond_0

    .line 214
    new-instance v1, Lio/sentry/android/core/DeviceInfoUtil;

    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lio/sentry/android/core/DeviceInfoUtil;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)V

    iput-object v1, p0, Lio/sentry/android/core/SentryAndroidOptions;->deviceInfoUtil:Lio/sentry/android/core/DeviceInfoUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_1

    .line 212
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

    .line 218
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    :goto_1
    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->deviceInfoUtil:Lio/sentry/android/core/DeviceInfoUtil;

    return-object v0
.end method

.method public getScreenshot()Lio/sentry/android/core/SentryScreenshotOptions;
    .locals 1

    .line 950
    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->screenshot:Lio/sentry/android/core/SentryScreenshotOptions;

    return-object v0
.end method

.method public getStartupCrashDurationThresholdMillis()J
    .locals 2

    .line 630
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method getStartupCrashFlushTimeoutMillis()J
    .locals 2

    .line 610
    iget-wide v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->startupCrashFlushTimeoutMillis:J

    return-wide v0
.end method

.method public getTombstoneMergeTimeThresholdMillis()J
    .locals 2

    .line 763
    iget-wide v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->tombstoneMergeTimeThresholdMillis:J

    return-wide v0
.end method

.method public isAnrEnabled()Z
    .locals 1

    .line 356
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrEnabled:Z

    return v0
.end method

.method public isAnrProfilingEnabled()Z
    .locals 4

    .line 989
    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrProfilingSampleRate:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrProfilingSampleRate:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnrReportInDebug()Z
    .locals 1

    .line 393
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrReportInDebug:Z

    return v0
.end method

.method public isAttachAnrThreadDump()Z
    .locals 1

    .line 755
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachAnrThreadDump:Z

    return v0
.end method

.method public isAttachRawTombstone()Z
    .locals 1

    .line 791
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachRawTombstone:Z

    return v0
.end method

.method public isAttachScreenshot()Z
    .locals 1

    .line 559
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachScreenshot:Z

    return v0
.end method

.method public isAttachViewHierarchy()Z
    .locals 1

    .line 567
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachViewHierarchy:Z

    return v0
.end method

.method public isCollectAdditionalContext()Z
    .locals 1

    .line 575
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->collectAdditionalContext:Z

    return v0
.end method

.method public isCollectExternalStorageContext()Z
    .locals 1

    .line 583
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->collectExternalStorageContext:Z

    return v0
.end method

.method public isEnableActivityLifecycleBreadcrumbs()Z
    .locals 1

    .line 469
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleBreadcrumbs:Z

    return v0
.end method

.method public isEnableActivityLifecycleTracingAutoFinish()Z
    .locals 1

    .line 550
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleTracingAutoFinish:Z

    return v0
.end method

.method public isEnableAnrFingerprinting()Z
    .locals 1

    .line 1001
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAnrFingerprinting:Z

    return v0
.end method

.method public isEnableAppComponentBreadcrumbs()Z
    .locals 1

    .line 493
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppComponentBreadcrumbs:Z

    return v0
.end method

.method public isEnableAppLifecycleBreadcrumbs()Z
    .locals 1

    .line 477
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppLifecycleBreadcrumbs:Z

    return v0
.end method

.method public isEnableAutoActivityLifecycleTracing()Z
    .locals 1

    .line 542
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAutoActivityLifecycleTracing:Z

    return v0
.end method

.method public isEnableAutoTraceIdGeneration()Z
    .locals 1

    .line 928
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAutoTraceIdGeneration:Z

    return v0
.end method

.method public isEnableFramesTracking()Z
    .locals 1

    .line 591
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableFramesTracking:Z

    return v0
.end method

.method public isEnableNdk()Z
    .locals 1

    .line 708
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNdk:Z

    return v0
.end method

.method public isEnableNdkAppHangTracking()Z
    .locals 1

    .line 412
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNdkAppHangTracking:Z

    return v0
.end method

.method public isEnableNetworkEventBreadcrumbs()Z
    .locals 1

    .line 501
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNetworkEventBreadcrumbs:Z

    return v0
.end method

.method public isEnablePerformanceV2()Z
    .locals 1

    .line 854
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enablePerformanceV2:Z

    return v0
.end method

.method public isEnableRootCheck()Z
    .locals 1

    .line 665
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableRootCheck:Z

    return v0
.end method

.method public isEnableScopeSync()Z
    .locals 1

    .line 726
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableScopeSync:Z

    return v0
.end method

.method public isEnableStandaloneAppStartTracing()Z
    .locals 1

    .line 875
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableStandaloneAppStartTracing:Z

    return v0
.end method

.method public isEnableSystemEventBreadcrumbs()Z
    .locals 1

    .line 485
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableSystemEventBreadcrumbs:Z

    return v0
.end method

.method public isEnableSystemEventBreadcrumbsExtras()Z
    .locals 1

    .line 936
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableSystemEventBreadcrumbsExtras:Z

    return v0
.end method

.method public isMemoryLimiterEnabled()Z
    .locals 1

    .line 800
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->memoryLimiterEnabled:Z

    return v0
.end method

.method public isReportHistoricalAnrs()Z
    .locals 1

    .line 739
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->reportHistoricalAnrs:Z

    return v0
.end method

.method public isReportHistoricalMemoryLimiterExits()Z
    .locals 1

    .line 825
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->reportHistoricalMemoryLimiterExits:Z

    return v0
.end method

.method public isReportHistoricalTombstones()Z
    .locals 1

    .line 747
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->reportHistoricalTombstones:Z

    return v0
.end method

.method public isTombstoneEnabled()Z
    .locals 1

    .line 465
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableTombstone:Z

    return v0
.end method

.method public setAnrEnabled(Z)V
    .locals 0
    .param p1, "anrEnabled"    # Z

    .line 365
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrEnabled:Z

    .line 366
    return-void
.end method

.method public setAnrProfilingSampleRate(Ljava/lang/Double;)V
    .locals 3
    .param p1, "anrProfilingSampleRate"    # Ljava/lang/Double;

    .line 973
    invoke-static {p1}, Lio/sentry/util/SampleRateUtils;->isValidSampleRate(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    iput-object p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrProfilingSampleRate:Ljava/lang/Double;

    .line 980
    return-void

    .line 974
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

.method public setAnrReportInDebug(Z)V
    .locals 0
    .param p1, "anrReportInDebug"    # Z

    .line 402
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrReportInDebug:Z

    .line 403
    return-void
.end method

.method public setAnrTimeoutIntervalMillis(J)V
    .locals 0
    .param p1, "anrTimeoutIntervalMillis"    # J

    .line 383
    iput-wide p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrTimeoutIntervalMillis:J

    .line 384
    return-void
.end method

.method public setAttachAnrThreadDump(Z)V
    .locals 0
    .param p1, "attachAnrThreadDump"    # Z

    .line 759
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachAnrThreadDump:Z

    .line 760
    return-void
.end method

.method public setAttachRawTombstone(Z)V
    .locals 0
    .param p1, "attachRawTombstone"    # Z

    .line 795
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachRawTombstone:Z

    .line 796
    return-void
.end method

.method public setAttachScreenshot(Z)V
    .locals 0
    .param p1, "attachScreenshot"    # Z

    .line 563
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachScreenshot:Z

    .line 564
    return-void
.end method

.method public setAttachViewHierarchy(Z)V
    .locals 0
    .param p1, "attachViewHierarchy"    # Z

    .line 571
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachViewHierarchy:Z

    .line 572
    return-void
.end method

.method public setBeforeScreenshotCaptureCallback(Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;)V
    .locals 0
    .param p1, "beforeScreenshotCaptureCallback"    # Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

    .line 684
    iput-object p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->beforeScreenshotCaptureCallback:Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

    .line 685
    return-void
.end method

.method public setBeforeViewHierarchyCaptureCallback(Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;)V
    .locals 0
    .param p1, "beforeViewHierarchyCaptureCallback"    # Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

    .line 699
    iput-object p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->beforeViewHierarchyCaptureCallback:Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

    .line 700
    return-void
.end method

.method public setCollectAdditionalContext(Z)V
    .locals 0
    .param p1, "collectAdditionalContext"    # Z

    .line 579
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->collectAdditionalContext:Z

    .line 580
    return-void
.end method

.method public setCollectExternalStorageContext(Z)V
    .locals 0
    .param p1, "collectExternalStorageContext"    # Z

    .line 587
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->collectExternalStorageContext:Z

    .line 588
    return-void
.end method

.method public setDebugImagesLoader(Lio/sentry/android/core/IDebugImagesLoader;)V
    .locals 1
    .param p1, "debugImagesLoader"    # Lio/sentry/android/core/IDebugImagesLoader;

    .line 537
    nop

    .line 538
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/sentry/android/core/NoOpDebugImagesLoader;->getInstance()Lio/sentry/android/core/NoOpDebugImagesLoader;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->debugImagesLoader:Lio/sentry/android/core/IDebugImagesLoader;

    .line 539
    return-void
.end method

.method public setEnableActivityLifecycleBreadcrumbs(Z)V
    .locals 0
    .param p1, "enableActivityLifecycleBreadcrumbs"    # Z

    .line 473
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleBreadcrumbs:Z

    .line 474
    return-void
.end method

.method public setEnableActivityLifecycleTracingAutoFinish(Z)V
    .locals 0
    .param p1, "enableActivityLifecycleTracingAutoFinish"    # Z

    .line 555
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleTracingAutoFinish:Z

    .line 556
    return-void
.end method

.method public setEnableAnrFingerprinting(Z)V
    .locals 0
    .param p1, "enableAnrFingerprinting"    # Z

    .line 1012
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAnrFingerprinting:Z

    .line 1013
    return-void
.end method

.method public setEnableAppComponentBreadcrumbs(Z)V
    .locals 0
    .param p1, "enableAppComponentBreadcrumbs"    # Z

    .line 497
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppComponentBreadcrumbs:Z

    .line 498
    return-void
.end method

.method public setEnableAppLifecycleBreadcrumbs(Z)V
    .locals 0
    .param p1, "enableAppLifecycleBreadcrumbs"    # Z

    .line 481
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppLifecycleBreadcrumbs:Z

    .line 482
    return-void
.end method

.method public setEnableAutoActivityLifecycleTracing(Z)V
    .locals 0
    .param p1, "enableAutoActivityLifecycleTracing"    # Z

    .line 546
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAutoActivityLifecycleTracing:Z

    .line 547
    return-void
.end method

.method public setEnableAutoTraceIdGeneration(Z)V
    .locals 0
    .param p1, "enableAutoTraceIdGeneration"    # Z

    .line 932
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAutoTraceIdGeneration:Z

    .line 933
    return-void
.end method

.method public setEnableFramesTracking(Z)V
    .locals 0
    .param p1, "enableFramesTracking"    # Z

    .line 600
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableFramesTracking:Z

    .line 601
    return-void
.end method

.method public setEnableNdk(Z)V
    .locals 0
    .param p1, "enableNdk"    # Z

    .line 717
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNdk:Z

    .line 718
    return-void
.end method

.method public setEnableNdkAppHangTracking(Z)V
    .locals 0
    .param p1, "enableNdkAppHangTracking"    # Z

    .line 424
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNdkAppHangTracking:Z

    .line 425
    return-void
.end method

.method public setEnableNetworkEventBreadcrumbs(Z)V
    .locals 0
    .param p1, "enableNetworkEventBreadcrumbs"    # Z

    .line 505
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNetworkEventBreadcrumbs:Z

    .line 506
    return-void
.end method

.method public setEnablePerformanceV2(Z)V
    .locals 0
    .param p1, "enablePerformanceV2"    # Z

    .line 866
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enablePerformanceV2:Z

    .line 867
    return-void
.end method

.method public setEnableRootCheck(Z)V
    .locals 0
    .param p1, "enableRootCheck"    # Z

    .line 669
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableRootCheck:Z

    .line 670
    return-void
.end method

.method public setEnableScopeSync(Z)V
    .locals 0
    .param p1, "enableScopeSync"    # Z

    .line 735
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableScopeSync:Z

    .line 736
    return-void
.end method

.method public setEnableStandaloneAppStartTracing(Z)V
    .locals 0
    .param p1, "enableStandaloneAppStartTracing"    # Z

    .line 913
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableStandaloneAppStartTracing:Z

    .line 914
    return-void
.end method

.method public setEnableSystemEventBreadcrumbs(Z)V
    .locals 0
    .param p1, "enableSystemEventBreadcrumbs"    # Z

    .line 489
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableSystemEventBreadcrumbs:Z

    .line 490
    return-void
.end method

.method public setEnableSystemEventBreadcrumbsExtras(Z)V
    .locals 0
    .param p1, "enableSystemEventBreadcrumbsExtras"    # Z

    .line 941
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableSystemEventBreadcrumbsExtras:Z

    .line 942
    return-void
.end method

.method public setFrameMetricsCollector(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V
    .locals 0
    .param p1, "frameMetricsCollector"    # Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 924
    iput-object p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 925
    return-void
.end method

.method public setMemoryLimiterEnabled(Z)V
    .locals 0
    .param p1, "memoryLimiterEnabled"    # Z

    .line 820
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->memoryLimiterEnabled:Z

    .line 821
    return-void
.end method

.method public setNativeHandlerStrategy(Lio/sentry/android/core/NdkHandlerStrategy;)V
    .locals 0
    .param p1, "ndkHandlerStrategy"    # Lio/sentry/android/core/NdkHandlerStrategy;

    .line 646
    iput-object p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->ndkHandlerStrategy:Lio/sentry/android/core/NdkHandlerStrategy;

    .line 647
    return-void
.end method

.method public setNativeSdkName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nativeSdkName"    # Ljava/lang/String;

    .line 641
    iput-object p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->nativeSdkName:Ljava/lang/String;

    .line 642
    return-void
.end method

.method public setNdkAppHangTimeoutIntervalMillis(J)V
    .locals 0
    .param p1, "ndkAppHangTimeoutIntervalMillis"    # J

    .line 446
    iput-wide p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->ndkAppHangTimeoutIntervalMillis:J

    .line 447
    return-void
.end method

.method public setReportHistoricalAnrs(Z)V
    .locals 0
    .param p1, "reportHistoricalAnrs"    # Z

    .line 743
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->reportHistoricalAnrs:Z

    .line 744
    return-void
.end method

.method public setReportHistoricalMemoryLimiterExits(Z)V
    .locals 0
    .param p1, "reportHistoricalMemoryLimiterExits"    # Z

    .line 846
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->reportHistoricalMemoryLimiterExits:Z

    .line 847
    return-void
.end method

.method public setReportHistoricalTombstones(Z)V
    .locals 0
    .param p1, "reportHistoricalTombstones"    # Z

    .line 751
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->reportHistoricalTombstones:Z

    .line 752
    return-void
.end method

.method setStartupCrashFlushTimeoutMillis(J)V
    .locals 0
    .param p1, "startupCrashFlushTimeoutMillis"    # J

    .line 620
    iput-wide p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->startupCrashFlushTimeoutMillis:J

    .line 621
    return-void
.end method

.method public setTombstoneEnabled(Z)V
    .locals 0
    .param p1, "enableTombstone"    # Z

    .line 455
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableTombstone:Z

    .line 456
    return-void
.end method

.method public setTombstoneMergeTimeThresholdMillis(J)V
    .locals 0
    .param p1, "tombstoneMergeTimeThresholdMillis"    # J

    .line 787
    iput-wide p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->tombstoneMergeTimeThresholdMillis:J

    .line 788
    return-void
.end method
