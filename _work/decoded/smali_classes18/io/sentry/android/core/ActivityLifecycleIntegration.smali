.class public final Lio/sentry/android/core/ActivityLifecycleIntegration;
.super Ljava/lang/Object;
.source "ActivityLifecycleIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field static final APP_START_COLD:Ljava/lang/String; = "app.start.cold"

.field static final APP_START_EXTENDED_DESC:Ljava/lang/String; = "Extended App Start"

.field static final APP_START_EXTENDED_OP:Ljava/lang/String; = "app.start.extended"

.field static final APP_START_REASON_DATA:Ljava/lang/String; = "app.vitals.start.reason"

.field static final APP_START_SCREEN_DATA:Ljava/lang/String; = "app.vitals.start.screen"

.field static final APP_START_TO_UI_LOAD_CONTINUATION_MAX_GAP_NANOS:J

.field static final APP_START_TRACE_ORIGIN:Ljava/lang/String; = "auto.app.start"

.field static final APP_START_TYPE_DATA:Ljava/lang/String; = "app.vitals.start.type"

.field static final APP_START_WARM:Ljava/lang/String; = "app.start.warm"

.field private static final STANDALONE_APP_START_NAME:Ljava/lang/String; = "App Start"

.field static final STANDALONE_APP_START_OP:Ljava/lang/String; = "app.start"

.field private static final TRACE_ORIGIN:Ljava/lang/String; = "auto.ui.activity"

.field static final TTFD_OP:Ljava/lang/String; = "ui.load.full_display"

.field static final TTFD_TIMEOUT_MILLIS:J = 0x61a8L

.field static final TTID_OP:Ljava/lang/String; = "ui.load.initial_display"

.field static final UI_LOAD_OP:Ljava/lang/String; = "ui.load"


# instance fields
.field private final activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ITransaction;",
            ">;"
        }
    .end annotation
.end field

.field private final activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

.field private final activitySpanHelpers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;",
            ">;"
        }
    .end annotation
.end field

.field private appStartSpan:Lio/sentry/ISpan;

.field private appStartTransaction:Lio/sentry/ITransaction;

.field private final application:Landroid/app/Application;

.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private firstActivityCreated:Z

.field private fullyDisplayedCalled:Z

.field private final fullyDisplayedLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

.field private isAllActivityCallbacksAvailable:Z

.field private lastPausedTime:Lio/sentry/SentryDate;

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private options:Lio/sentry/android/core/SentryAndroidOptions;

.field private performanceEnabled:Z

.field private scopes:Lio/sentry/IScopes;

.field private timeToFullDisplaySpanEnabled:Z

.field private ttfdAutoCloseFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final ttfdSpanMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation
.end field

.field private final ttidSpanMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0Qs9Qp7a-bE0z4rKoiQs62ap8Zw(Lio/sentry/android/core/ActivityLifecycleIntegration;)V
    .locals 0

    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onHeadlessAppStart()V

    return-void
.end method

.method public static synthetic $r8$lambda$SpDR6TpBBhAF6MvL2rkuApz5ajI(Lio/sentry/android/core/ActivityLifecycleIntegration;)Lio/sentry/android/core/AppStartExtension$ExtendedAppStart;
    .locals 0

    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onExtendAppStartRequested()Lio/sentry/android/core/AppStartExtension$ExtendedAppStart;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 73
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/sentry/android/core/ActivityLifecycleIntegration;->APP_START_TO_UI_LOAD_CONTINUATION_MAX_GAP_NANOS:J

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/ActivityFramesTracker;)V
    .locals 5
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p3, "activityFramesTracker"    # Lio/sentry/android/core/ActivityFramesTracker;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    .line 87
    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->timeToFullDisplaySpanEnabled:Z

    .line 91
    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    .line 96
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    .line 97
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    .line 98
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitySpanHelpers:Ljava/util/WeakHashMap;

    .line 100
    new-instance v2, Lio/sentry/SentryNanotimeDate;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4, v3, v4}, Lio/sentry/SentryNanotimeDate;-><init>(JJ)V

    iput-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    .line 101
    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdAutoCloseFuture:Ljava/util/concurrent/Future;

    .line 105
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    .line 109
    new-instance v1, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v1}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 110
    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedCalled:Z

    .line 111
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 118
    const-string v0, "Application is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->application:Landroid/app/Application;

    .line 119
    nop

    .line 120
    const-string v0, "BuildInfoProvider is required"

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/BuildInfoProvider;

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 121
    nop

    .line 122
    const-string v0, "ActivityFramesTracker is required"

    invoke-static {p3, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/ActivityFramesTracker;

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    .line 124
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->isAllActivityCallbacksAvailable:Z

    .line 127
    :cond_0
    return-void
.end method

.method private cancelTtfdAutoClose()V
    .locals 2

    .line 792
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdAutoCloseFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdAutoCloseFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 794
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdAutoCloseFuture:Ljava/util/concurrent/Future;

    .line 796
    :cond_0
    return-void
.end method

.method private clear()V
    .locals 3

    .line 757
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    .line 758
    new-instance v0, Lio/sentry/SentryNanotimeDate;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lio/sentry/SentryNanotimeDate;-><init>(JJ)V

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    .line 759
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitySpanHelpers:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 760
    return-void
.end method

.method private continueUiLoadTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/TransactionContext;
    .locals 9
    .param p1, "sentryTrace"    # Ljava/lang/String;
    .param p2, "baggage"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isTracingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 451
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 453
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    .line 455
    if-nez p2, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 452
    invoke-static {v0, p1, v2, v3}, Lio/sentry/PropagationContext;->fromHeaders(Lio/sentry/ILogger;Ljava/lang/String;Ljava/util/List;Lio/sentry/SentryOptions;)Lio/sentry/PropagationContext;

    move-result-object v0

    .line 457
    .local v0, "propagationContext":Lio/sentry/PropagationContext;
    invoke-virtual {v0}, Lio/sentry/PropagationContext;->isSampled()Ljava/lang/Boolean;

    move-result-object v2

    .line 458
    .local v2, "parentSampled":Ljava/lang/Boolean;
    invoke-virtual {v0}, Lio/sentry/PropagationContext;->getBaggage()Lio/sentry/Baggage;

    move-result-object v8

    .line 460
    .local v8, "continuedBaggage":Lio/sentry/Baggage;
    if-nez v2, :cond_2

    .line 461
    move-object v7, v1

    goto :goto_1

    .line 462
    :cond_2
    new-instance v1, Lio/sentry/TracesSamplingDecision;

    .line 464
    invoke-virtual {v8}, Lio/sentry/Baggage;->getSampleRate()Ljava/lang/Double;

    move-result-object v3

    .line 465
    invoke-virtual {v0}, Lio/sentry/PropagationContext;->getSampleRand()Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v7, v1

    :goto_1
    nop

    .line 466
    .local v7, "parentSamplingDecision":Lio/sentry/TracesSamplingDecision;
    new-instance v3, Lio/sentry/TransactionContext;

    .line 468
    invoke-virtual {v0}, Lio/sentry/PropagationContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v4

    .line 469
    invoke-virtual {v0}, Lio/sentry/PropagationContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lio/sentry/TransactionContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;Lio/sentry/Baggage;)V

    .line 473
    .local v3, "context":Lio/sentry/TransactionContext;
    invoke-virtual {v3, p3}, Lio/sentry/TransactionContext;->setName(Ljava/lang/String;)V

    .line 474
    sget-object v1, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    invoke-virtual {v3, v1}, Lio/sentry/TransactionContext;->setTransactionNameSource(Lio/sentry/protocol/TransactionNameSource;)V

    .line 475
    const-string v1, "ui.load"

    invoke-virtual {v3, v1}, Lio/sentry/TransactionContext;->setOperation(Ljava/lang/String;)V

    .line 476
    return-object v3

    .line 449
    .end local v0    # "propagationContext":Lio/sentry/PropagationContext;
    .end local v2    # "parentSampled":Ljava/lang/Boolean;
    .end local v3    # "context":Lio/sentry/TransactionContext;
    .end local v7    # "parentSamplingDecision":Lio/sentry/TracesSamplingDecision;
    .end local v8    # "continuedBaggage":Lio/sentry/Baggage;
    :cond_3
    :goto_2
    return-object v1
.end method

.method private createStandaloneAppStartTransaction(Lio/sentry/SentryDate;Lio/sentry/TracesSamplingDecision;Z)Lio/sentry/ITransaction;
    .locals 7
    .param p1, "startTime"    # Lio/sentry/SentryDate;
    .param p2, "samplingDecision"    # Lio/sentry/TracesSamplingDecision;
    .param p3, "holdOpenForExtension"    # Z

    .line 1049
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    .line 1051
    .local v0, "metrics":Lio/sentry/android/core/performance/AppStartMetrics;
    new-instance v1, Lio/sentry/TransactionOptions;

    invoke-direct {v1}, Lio/sentry/TransactionOptions;-><init>()V

    .line 1052
    .local v1, "txnOptions":Lio/sentry/TransactionOptions;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/sentry/TransactionOptions;->setBindToScope(Z)V

    .line 1053
    invoke-virtual {v1, p1}, Lio/sentry/TransactionOptions;->setStartTimestamp(Lio/sentry/SentryDate;)V

    .line 1054
    const-string v3, "auto.app.start"

    invoke-virtual {v1, v3}, Lio/sentry/TransactionOptions;->setOrigin(Ljava/lang/String;)V

    .line 1055
    const/4 v3, 0x1

    if-eqz p2, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Lio/sentry/TransactionOptions;->setAppStartTransaction(Z)V

    .line 1056
    const/4 v2, 0x0

    if-eqz p3, :cond_2

    .line 1057
    invoke-virtual {v1, v3}, Lio/sentry/TransactionOptions;->setWaitForChildren(Z)V

    .line 1058
    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getDeadlineTimeout()J

    move-result-wide v3

    .line 1059
    .local v3, "deadlineTimeoutMillis":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_1

    move-object v5, v2

    goto :goto_0

    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :goto_0
    invoke-virtual {v1, v5}, Lio/sentry/TransactionOptions;->setDeadlineTimeout(Ljava/lang/Long;)V

    .line 1063
    new-instance v5, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda9;

    invoke-direct {v5}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v1, v5}, Lio/sentry/TransactionOptions;->setTransactionFinishedCallback(Lio/sentry/TransactionFinishedCallback;)V

    .line 1069
    .end local v3    # "deadlineTimeoutMillis":J
    :cond_2
    new-instance v3, Lio/sentry/TransactionContext;

    sget-object v4, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    const-string v5, "app.start"

    const-string v6, "App Start"

    invoke-direct {v3, v6, v4, v5, p2}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V

    .line 1076
    .local v3, "txnContext":Lio/sentry/TransactionContext;
    iget-object v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->scopes:Lio/sentry/IScopes;

    invoke-interface {v4, v3, v1}, Lio/sentry/IScopes;->startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object v4

    .line 1077
    .local v4, "transaction":Lio/sentry/ITransaction;
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartReason()Ljava/lang/String;

    move-result-object v5

    .line 1078
    .local v5, "appStartReason":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1079
    const-string v6, "app.vitals.start.reason"

    invoke-interface {v4, v6, v5}, Lio/sentry/ITransaction;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1081
    :cond_3
    invoke-interface {v4}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    invoke-virtual {v0, v6}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartTraceId(Lio/sentry/protocol/SentryId;)V

    .line 1083
    invoke-interface {v4}, Lio/sentry/ITransaction;->toSentryTrace()Lio/sentry/SentryTraceHeader;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/SentryTraceHeader;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartSentryTraceHeader(Ljava/lang/String;)V

    .line 1084
    invoke-interface {v4, v2}, Lio/sentry/ITransaction;->toBaggageHeader(Ljava/util/List;)Lio/sentry/BaggageHeader;

    move-result-object v6

    .line 1085
    .local v6, "baggageHeader":Lio/sentry/BaggageHeader;
    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Lio/sentry/BaggageHeader;->getValue()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartBaggageHeader(Ljava/lang/String;)V

    .line 1086
    return-object v4
.end method

.method private finishAppStartSpan()V
    .locals 1

    .line 976
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishAppStartSpan(Lio/sentry/SentryDate;)V

    .line 977
    return-void
.end method

.method private finishAppStartSpan(Lio/sentry/SentryDate;)V
    .locals 3
    .param p1, "endDate"    # Lio/sentry/SentryDate;

    .line 981
    if-eqz p1, :cond_0

    .line 982
    move-object v0, p1

    goto :goto_0

    .line 983
    :cond_0
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 984
    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpanWithFallback(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    .line 985
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->getProjectedStopTimestamp()Lio/sentry/SentryDate;

    move-result-object v0

    :goto_0
    nop

    .line 986
    .local v0, "appStartEndTime":Lio/sentry/SentryDate;
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 987
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    invoke-direct {p0, v1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;)V

    .line 988
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartTransaction:Lio/sentry/ITransaction;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartTransaction:Lio/sentry/ITransaction;

    invoke-interface {v1}, Lio/sentry/ITransaction;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 989
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartTransaction:Lio/sentry/ITransaction;

    sget-object v2, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v1, v2, v0}, Lio/sentry/ITransaction;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    .line 993
    :cond_1
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartExtension()Lio/sentry/android/core/AppStartExtension;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/sentry/android/core/AppStartExtension;->finishTransaction(Lio/sentry/SentryDate;)V

    .line 995
    :cond_2
    return-void
.end method

.method private finishExceededTtfdSpan(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 3
    .param p1, "ttfdSpan"    # Lio/sentry/ISpan;
    .param p2, "ttidSpan"    # Lio/sentry/ISpan;

    .line 882
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 885
    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getExceededTtfdDesc(Lio/sentry/ISpan;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ISpan;->setDescription(Ljava/lang/String;)V

    .line 887
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lio/sentry/ISpan;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 889
    .local v0, "ttidEndDate":Lio/sentry/SentryDate;
    :goto_0
    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v1

    .line 890
    .local v1, "ttfdEndDate":Lio/sentry/SentryDate;
    :goto_1
    sget-object v2, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    invoke-direct {p0, p1, v1, v2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;Lio/sentry/SpanStatus;)V

    .line 891
    return-void

    .line 883
    .end local v0    # "ttidEndDate":Lio/sentry/SentryDate;
    .end local v1    # "ttfdEndDate":Lio/sentry/SentryDate;
    :cond_3
    :goto_2
    return-void
.end method

.method private finishSpan(Lio/sentry/ISpan;)V
    .locals 1
    .param p1, "span"    # Lio/sentry/ISpan;

    .line 763
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 764
    invoke-interface {p1}, Lio/sentry/ISpan;->finish()V

    .line 766
    :cond_0
    return-void
.end method

.method private finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;)V
    .locals 1
    .param p1, "span"    # Lio/sentry/ISpan;
    .param p2, "endTimestamp"    # Lio/sentry/SentryDate;

    .line 769
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;Lio/sentry/SpanStatus;)V

    .line 770
    return-void
.end method

.method private finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;Lio/sentry/SpanStatus;)V
    .locals 1
    .param p1, "span"    # Lio/sentry/ISpan;
    .param p2, "endTimestamp"    # Lio/sentry/SentryDate;
    .param p3, "spanStatus"    # Lio/sentry/SpanStatus;

    .line 776
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 778
    if-eqz p3, :cond_0

    .line 779
    move-object v0, p3

    goto :goto_0

    .line 780
    :cond_0
    invoke-interface {p1}, Lio/sentry/ISpan;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lio/sentry/ISpan;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    :goto_0
    nop

    .line 781
    .local v0, "status":Lio/sentry/SpanStatus;
    invoke-interface {p1, v0, p2}, Lio/sentry/ISpan;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    .line 783
    .end local v0    # "status":Lio/sentry/SpanStatus;
    :cond_2
    return-void
.end method

.method private finishSpan(Lio/sentry/ISpan;Lio/sentry/SpanStatus;)V
    .locals 1
    .param p1, "span"    # Lio/sentry/ISpan;
    .param p2, "status"    # Lio/sentry/SpanStatus;

    .line 786
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 787
    invoke-interface {p1, p2}, Lio/sentry/ISpan;->finish(Lio/sentry/SpanStatus;)V

    .line 789
    :cond_0
    return-void
.end method

.method private finishTransaction(Lio/sentry/ITransaction;Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 3
    .param p1, "transaction"    # Lio/sentry/ITransaction;
    .param p2, "ttidSpan"    # Lio/sentry/ISpan;
    .param p3, "ttfdSpan"    # Lio/sentry/ISpan;

    .line 523
    if-eqz p1, :cond_2

    .line 526
    invoke-interface {p1}, Lio/sentry/ITransaction;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    return-void

    .line 531
    :cond_0
    sget-object v0, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    invoke-direct {p0, p2, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SpanStatus;)V

    .line 532
    invoke-direct {p0, p3, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishExceededTtfdSpan(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    .line 533
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->cancelTtfdAutoClose()V

    .line 535
    invoke-interface {p1}, Lio/sentry/ITransaction;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    .line 537
    .local v0, "status":Lio/sentry/SpanStatus;
    if-nez v0, :cond_1

    .line 538
    sget-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    .line 540
    :cond_1
    invoke-interface {p1, v0}, Lio/sentry/ITransaction;->finish(Lio/sentry/SpanStatus;)V

    .line 541
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v1, :cond_2

    .line 544
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->scopes:Lio/sentry/IScopes;

    new-instance v2, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ITransaction;)V

    invoke-interface {v1, v2}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 550
    .end local v0    # "status":Lio/sentry/SpanStatus;
    :cond_2
    return-void
.end method

.method private getActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppStartDesc(Z)Ljava/lang/String;
    .locals 1
    .param p1, "coldStart"    # Z

    .line 950
    if-eqz p1, :cond_0

    .line 951
    const-string v0, "Cold Start"

    return-object v0

    .line 953
    :cond_0
    const-string v0, "Warm Start"

    return-object v0
.end method

.method private getAppStartOp(Z)Ljava/lang/String;
    .locals 1
    .param p1, "coldStart"    # Z

    .line 968
    if-eqz p1, :cond_0

    .line 969
    const-string v0, "app.start.cold"

    return-object v0

    .line 971
    :cond_0
    const-string v0, "app.start.warm"

    return-object v0
.end method

.method private getAppStartParent(Landroid/app/Activity;)Lio/sentry/ISpan;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 958
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartTransaction:Lio/sentry/ITransaction;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartTransaction:Lio/sentry/ITransaction;

    return-object v0

    .line 961
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    return-object v0

    .line 964
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISpan;

    return-object v0
.end method

.method private getExceededTtfdDesc(Lio/sentry/ISpan;)Ljava/lang/String;
    .locals 4
    .param p1, "ttfdSpan"    # Lio/sentry/ISpan;

    .line 943
    invoke-interface {p1}, Lio/sentry/ISpan;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "ttfdCurrentDescription":Ljava/lang/String;
    const-string v1, " - Deadline Exceeded"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 945
    return-object v0

    .line 946
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/sentry/ISpan;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTtfdDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "activityName"    # Ljava/lang/String;

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " full display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTtidDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "activityName"    # Ljava/lang/String;

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " initial display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isPerformanceEnabled(Lio/sentry/android/core/SentryAndroidOptions;)Z
    .locals 1
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 156
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoActivityLifecycleTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRunningTransactionOrTrace(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 509
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isWithinAppStartContinuationWindow(Lio/sentry/SentryDate;)Z
    .locals 6
    .param p1, "uiLoadStartTime"    # Lio/sentry/SentryDate;

    .line 431
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartEndTime()Lio/sentry/SentryDate;

    move-result-object v0

    .line 432
    .local v0, "appStartEndTime":Lio/sentry/SentryDate;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 433
    return v1

    .line 435
    :cond_0
    invoke-virtual {p1, v0}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v2

    sget-wide v4, Lio/sentry/android/core/ActivityLifecycleIntegration;->APP_START_TO_UI_LOAD_CONTINUATION_MAX_GAP_NANOS:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$clearScope$4(Lio/sentry/ITransaction;Lio/sentry/IScope;Lio/sentry/ITransaction;)V
    .locals 0
    .param p0, "transaction"    # Lio/sentry/ITransaction;
    .param p1, "scope"    # Lio/sentry/IScope;
    .param p2, "scopeTransaction"    # Lio/sentry/ITransaction;

    .line 502
    if-ne p2, p0, :cond_0

    .line 503
    invoke-interface {p1}, Lio/sentry/IScope;->clearTransaction()V

    .line 505
    :cond_0
    return-void
.end method

.method static synthetic lambda$createStandaloneAppStartTransaction$10(Lio/sentry/ITransaction;)V
    .locals 2
    .param p0, "finishedTransaction"    # Lio/sentry/ITransaction;

    .line 1065
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    .line 1066
    invoke-interface {p0}, Lio/sentry/ITransaction;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartEndTime(Lio/sentry/SentryDate;)V

    .line 1065
    return-void
.end method

.method static synthetic lambda$onActivityCreated$6(Ljava/lang/String;Lio/sentry/IScope;)V
    .locals 0
    .param p0, "activityClassName"    # Ljava/lang/String;
    .param p1, "scope"    # Lio/sentry/IScope;

    .line 580
    invoke-interface {p1, p0}, Lio/sentry/IScope;->setScreen(Ljava/lang/String;)V

    return-void
.end method

.method private onExtendAppStartRequested()Lio/sentry/android/core/AppStartExtension$ExtendedAppStart;
    .locals 11

    .line 1098
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->scopes:Lio/sentry/IScopes;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 1101
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableStandaloneAppStartTracing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1104
    :cond_0
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    .line 1107
    .local v0, "metrics":Lio/sentry/android/core/performance/AppStartMetrics;
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1108
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    goto :goto_0

    .line 1109
    :cond_1
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getSdkInitTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    :goto_0
    nop

    .line 1110
    .local v2, "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestamp()Lio/sentry/SentryDate;

    move-result-object v3

    .line 1111
    .local v3, "startTime":Lio/sentry/SentryDate;
    if-nez v3, :cond_2

    .line 1112
    return-object v1

    .line 1120
    :cond_2
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v4

    .line 1121
    .local v4, "samplingDecision":Lio/sentry/TracesSamplingDecision;
    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    .line 1123
    nop

    .line 1124
    const/4 v1, 0x1

    invoke-direct {p0, v3, v4, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->createStandaloneAppStartTransaction(Lio/sentry/SentryDate;Lio/sentry/TracesSamplingDecision;Z)Lio/sentry/ITransaction;

    move-result-object v5

    .line 1126
    .local v5, "transaction":Lio/sentry/ITransaction;
    new-instance v10, Lio/sentry/SpanOptions;

    invoke-direct {v10}, Lio/sentry/SpanOptions;-><init>()V

    .line 1127
    .local v10, "spanOptions":Lio/sentry/SpanOptions;
    invoke-direct {p0, v10}, Lio/sentry/android/core/ActivityLifecycleIntegration;->setSpanOrigin(Lio/sentry/SpanOptions;)V

    .line 1128
    nop

    .line 1132
    invoke-static {}, Lio/sentry/android/core/AndroidDateUtils;->getCurrentSentryDateTime()Lio/sentry/SentryDate;

    move-result-object v8

    sget-object v9, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    .line 1129
    const-string v6, "app.start.extended"

    const-string v7, "Extended App Start"

    invoke-interface/range {v5 .. v10}, Lio/sentry/ITransaction;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object v1

    .line 1136
    .local v1, "extendedSpan":Lio/sentry/ISpan;
    new-instance v6, Lio/sentry/android/core/AppStartExtension$ExtendedAppStart;

    invoke-direct {v6, v5, v1}, Lio/sentry/android/core/AppStartExtension$ExtendedAppStart;-><init>(Lio/sentry/ITransaction;Lio/sentry/ISpan;)V

    return-object v6

    .line 1102
    .end local v0    # "metrics":Lio/sentry/android/core/performance/AppStartMetrics;
    .end local v1    # "extendedSpan":Lio/sentry/ISpan;
    .end local v2    # "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    .end local v3    # "startTime":Lio/sentry/SentryDate;
    .end local v4    # "samplingDecision":Lio/sentry/TracesSamplingDecision;
    .end local v5    # "transaction":Lio/sentry/ITransaction;
    .end local v10    # "spanOptions":Lio/sentry/SpanOptions;
    :cond_3
    :goto_1
    return-object v1
.end method

.method private onFirstFrameDrawn(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 13
    .param p1, "ttfdSpan"    # Lio/sentry/ISpan;
    .param p2, "ttidSpan"    # Lio/sentry/ISpan;

    .line 800
    const-string v0, "time_to_full_display"

    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v1

    .line 801
    .local v1, "appStartMetrics":Lio/sentry/android/core/performance/AppStartMetrics;
    invoke-virtual {v1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    .line 802
    .local v2, "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    invoke-virtual {v1}, Lio/sentry/android/core/performance/AppStartMetrics;->getSdkInitTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v3

    .line 804
    .local v3, "sdkInitTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    iget-object v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v4

    invoke-interface {v4}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 807
    .local v4, "firstFrameEndDate":Lio/sentry/SentryDate;
    :goto_0
    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStopped()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 808
    invoke-direct {p0, v2, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration;->stopTimeSpanAtDate(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SentryDate;)V

    .line 810
    :cond_1
    invoke-virtual {v3}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStopped()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 811
    invoke-direct {p0, v3, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration;->stopTimeSpanAtDate(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SentryDate;)V

    .line 813
    :cond_2
    invoke-direct {p0, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishAppStartSpan(Lio/sentry/SentryDate;)V

    .line 817
    iget-object v5, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v5}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v5

    .line 818
    .local v5, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v6, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v6, :cond_4

    if-eqz p2, :cond_4

    if-eqz v4, :cond_4

    .line 819
    invoke-interface {p2}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v6

    invoke-virtual {v4, v6}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v6

    .line 820
    .local v6, "durationNanos":J
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .line 821
    .local v8, "durationMillis":J
    const-string v10, "time_to_initial_display"

    .line 822
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    sget-object v12, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    .line 821
    invoke-interface {p2, v10, v11, v12}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V

    .line 825
    if-eqz p1, :cond_3

    iget-boolean v10, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedCalled:Z

    if-eqz v10, :cond_3

    .line 826
    const/4 v10, 0x0

    iput-boolean v10, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedCalled:Z

    .line 827
    nop

    .line 828
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    sget-object v11, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    .line 827
    invoke-interface {p2, v0, v10, v11}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V

    .line 829
    nop

    .line 830
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    sget-object v11, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    .line 829
    invoke-interface {p1, v0, v10, v11}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V

    .line 831
    invoke-direct {p0, p1, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;)V

    .line 834
    :cond_3
    invoke-direct {p0, p2, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;)V

    .line 835
    .end local v6    # "durationNanos":J
    .end local v8    # "durationMillis":J
    goto :goto_1

    .line 836
    :cond_4
    invoke-direct {p0, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;)V

    .line 837
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedCalled:Z

    if-eqz v0, :cond_5

    .line 838
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    :cond_5
    :goto_1
    if-eqz v5, :cond_6

    invoke-interface {v5}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 842
    .end local v5    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_6
    return-void

    .line 817
    .restart local v5    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v0

    if-eqz v5, :cond_7

    :try_start_1
    invoke-interface {v5}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw v0
.end method

.method private onFullFrameDrawn(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 9
    .param p1, "ttidSpan"    # Lio/sentry/ISpan;
    .param p2, "ttfdSpan"    # Lio/sentry/ISpan;

    .line 856
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->cancelTtfdAutoClose()V

    .line 859
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 863
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 864
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedCalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 865
    :cond_0
    return-void

    .line 867
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v1, :cond_2

    .line 868
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v1

    invoke-interface {v1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v1

    .line 869
    .local v1, "endDate":Lio/sentry/SentryDate;
    invoke-interface {p2}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v2

    .line 870
    .local v2, "durationNanos":J
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 871
    .local v4, "durationMillis":J
    const-string v6, "time_to_full_display"

    .line 872
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sget-object v8, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    .line 871
    invoke-interface {p2, v6, v7, v8}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V

    .line 873
    invoke-direct {p0, p2, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;)V

    .line 874
    .end local v1    # "endDate":Lio/sentry/SentryDate;
    .end local v2    # "durationNanos":J
    .end local v4    # "durationMillis":J
    goto :goto_0

    .line 875
    :cond_2
    invoke-direct {p0, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 877
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 878
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_3
    return-void

    .line 859
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_2
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
.end method

.method private onHeadlessAppStart()V
    .locals 7

    .line 998
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 1002
    :cond_0
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    .line 1005
    .local v0, "metrics":Lio/sentry/android/core/performance/AppStartMetrics;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    .line 1009
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpanForHeadless()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    .line 1011
    .local v2, "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->hasStopped()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 1015
    :cond_1
    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestamp()Lio/sentry/SentryDate;

    move-result-object v3

    .line 1016
    .local v3, "startTime":Lio/sentry/SentryDate;
    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->getProjectedStopTimestamp()Lio/sentry/SentryDate;

    move-result-object v4

    .line 1017
    .local v4, "endTime":Lio/sentry/SentryDate;
    if-eqz v3, :cond_5

    if-nez v4, :cond_2

    goto :goto_0

    .line 1023
    :cond_2
    invoke-virtual {v0, v4}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartEndTime(Lio/sentry/SentryDate;)V

    .line 1025
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartExtension()Lio/sentry/android/core/AppStartExtension;

    move-result-object v5

    .line 1026
    .local v5, "extension":Lio/sentry/android/core/AppStartExtension;
    invoke-virtual {v5}, Lio/sentry/android/core/AppStartExtension;->isActive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1027
    invoke-virtual {v5, v4}, Lio/sentry/android/core/AppStartExtension;->finishTransaction(Lio/sentry/SentryDate;)V

    .line 1028
    return-void

    .line 1030
    :cond_3
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lio/sentry/android/core/performance/AppStartMetrics;->shouldSendStartMeasurements(Z)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1031
    return-void

    .line 1034
    :cond_4
    nop

    .line 1035
    const/4 v6, 0x0

    invoke-direct {p0, v3, v1, v6}, Lio/sentry/android/core/ActivityLifecycleIntegration;->createStandaloneAppStartTransaction(Lio/sentry/SentryDate;Lio/sentry/TracesSamplingDecision;Z)Lio/sentry/ITransaction;

    move-result-object v1

    .line 1036
    .local v1, "transaction":Lio/sentry/ITransaction;
    sget-object v6, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v1, v6, v4}, Lio/sentry/ITransaction;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    .line 1037
    return-void

    .line 1018
    .end local v1    # "transaction":Lio/sentry/ITransaction;
    .end local v5    # "extension":Lio/sentry/android/core/AppStartExtension;
    :cond_5
    :goto_0
    return-void

    .line 1012
    .end local v3    # "startTime":Lio/sentry/SentryDate;
    .end local v4    # "endTime":Lio/sentry/SentryDate;
    :cond_6
    :goto_1
    return-void

    .line 999
    .end local v0    # "metrics":Lio/sentry/android/core/performance/AppStartMetrics;
    .end local v2    # "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    :cond_7
    :goto_2
    return-void
.end method

.method private setSpanOrigin(Lio/sentry/SpanOptions;)V
    .locals 1
    .param p1, "spanOptions"    # Lio/sentry/SpanOptions;

    .line 421
    const-string v0, "auto.ui.activity"

    invoke-virtual {p1, v0}, Lio/sentry/SpanOptions;->setOrigin(Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method private startTracing(Landroid/app/Activity;)V
    .locals 32
    .param p1, "activity"    # Landroid/app/Activity;

    .line 188
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v3, v0

    .line 189
    .local v3, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_1a

    invoke-direct/range {p0 .. p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->isRunningTransactionOrTrace(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 190
    iget-boolean v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-nez v0, :cond_1

    .line 191
    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoTraceIdGeneration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->scopes:Lio/sentry/IScopes;

    invoke-static {v0}, Lio/sentry/util/TracingUtils;->startNewTrace(Lio/sentry/IScopes;)V

    move-object/from16 v29, v3

    goto/16 :goto_11

    .line 192
    :cond_0
    move-object/from16 v29, v3

    goto/16 :goto_11

    .line 197
    :cond_1
    invoke-direct {v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->stopPreviousTransactions()V

    .line 199
    invoke-direct/range {p0 .. p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "activityName":Ljava/lang/String;
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    iget-object v5, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0, v5}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpanWithFallback(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v5

    .line 208
    .local v5, "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    invoke-static {}, Lio/sentry/android/core/ContextUtils;->isForegroundImportance()Z

    move-result v6

    .line 209
    .local v6, "foregroundImportance":Z
    const/4 v0, 0x0

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 210
    invoke-virtual {v5}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestamp()Lio/sentry/SentryDate;

    move-result-object v8

    .line 212
    .local v8, "appStartTime":Lio/sentry/SentryDate;
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v9

    invoke-virtual {v9}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartType()Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    move-result-object v9

    sget-object v10, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    if-ne v9, v10, :cond_2

    move v9, v7

    goto :goto_0

    :cond_2
    move v9, v0

    :goto_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v13, v8

    .local v9, "coldStart":Ljava/lang/Boolean;
    goto :goto_1

    .line 214
    .end local v8    # "appStartTime":Lio/sentry/SentryDate;
    .end local v9    # "coldStart":Ljava/lang/Boolean;
    :cond_3
    const/4 v8, 0x0

    .line 215
    .restart local v8    # "appStartTime":Lio/sentry/SentryDate;
    const/4 v9, 0x0

    move-object v13, v8

    .line 218
    .end local v8    # "appStartTime":Lio/sentry/SentryDate;
    .restart local v9    # "coldStart":Ljava/lang/Boolean;
    .local v13, "appStartTime":Lio/sentry/SentryDate;
    :goto_1
    new-instance v8, Lio/sentry/TransactionOptions;

    invoke-direct {v8}, Lio/sentry/TransactionOptions;-><init>()V

    .line 221
    .local v8, "transactionOptions":Lio/sentry/TransactionOptions;
    iget-object v10, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v10}, Lio/sentry/android/core/SentryAndroidOptions;->getDeadlineTimeout()J

    move-result-wide v16

    .line 223
    .local v16, "deadlineTimeoutMillis":J
    nop

    .line 224
    const-wide/16 v10, 0x0

    cmp-long v10, v16, v10

    const/4 v11, 0x0

    if-gtz v10, :cond_4

    move-object v10, v11

    goto :goto_2

    :cond_4
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 223
    :goto_2
    invoke-virtual {v8, v10}, Lio/sentry/TransactionOptions;->setDeadlineTimeout(Ljava/lang/Long;)V

    .line 226
    iget-object v10, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v10}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleTracingAutoFinish()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 227
    iget-object v10, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v10}, Lio/sentry/android/core/SentryAndroidOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Lio/sentry/TransactionOptions;->setIdleTimeout(Ljava/lang/Long;)V

    .line 228
    invoke-virtual {v8, v7}, Lio/sentry/TransactionOptions;->setTrimEnd(Z)V

    .line 230
    :cond_5
    invoke-virtual {v8, v7}, Lio/sentry/TransactionOptions;->setWaitForChildren(Z)V

    .line 231
    new-instance v10, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda6;

    invoke-direct {v10, v1, v3, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda6;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lio/sentry/TransactionOptions;->setTransactionFinishedCallback(Lio/sentry/TransactionFinishedCallback;)V

    .line 253
    iget-boolean v10, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    if-nez v10, :cond_6

    if-eqz v13, :cond_6

    if-eqz v9, :cond_6

    .line 255
    move-object v10, v13

    .line 258
    .local v10, "ttidStartTime":Lio/sentry/SentryDate;
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v12

    invoke-virtual {v12}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v12

    .line 259
    .local v12, "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v14

    invoke-virtual {v14, v11}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    goto :goto_3

    .line 262
    .end local v10    # "ttidStartTime":Lio/sentry/SentryDate;
    .end local v12    # "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    :cond_6
    iget-object v10, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    .line 263
    .restart local v10    # "ttidStartTime":Lio/sentry/SentryDate;
    const/4 v12, 0x0

    .line 265
    .restart local v12    # "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    :goto_3
    invoke-virtual {v8, v10}, Lio/sentry/TransactionOptions;->setStartTimestamp(Lio/sentry/SentryDate;)V

    .line 266
    if-eqz v12, :cond_7

    move v14, v7

    goto :goto_4

    :cond_7
    move v14, v0

    :goto_4
    invoke-virtual {v8, v14}, Lio/sentry/TransactionOptions;->setAppStartTransaction(Z)V

    .line 267
    invoke-direct {v1, v8}, Lio/sentry/android/core/ActivityLifecycleIntegration;->setSpanOrigin(Lio/sentry/SpanOptions;)V

    .line 272
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v14

    invoke-virtual {v14}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartExtension()Lio/sentry/android/core/AppStartExtension;

    move-result-object v14

    invoke-virtual {v14}, Lio/sentry/android/core/AppStartExtension;->isActive()Z

    move-result v24

    .line 275
    .local v24, "isExtensionActive":Z
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v14

    invoke-virtual {v14}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v25

    .line 276
    .local v25, "storedAppStartTraceId":Lio/sentry/protocol/SentryId;
    if-nez v24, :cond_8

    if-eqz v25, :cond_8

    move v14, v7

    goto :goto_5

    :cond_8
    move v14, v0

    :goto_5
    move/from16 v26, v14

    .line 279
    .local v26, "isFollowingHeadlessAppStart":Z
    iget-boolean v14, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    if-nez v14, :cond_9

    if-eqz v13, :cond_9

    if-eqz v9, :cond_9

    move v14, v7

    goto :goto_6

    :cond_9
    move v14, v0

    :goto_6
    move/from16 v27, v14

    .line 281
    .local v27, "isAppStart":Z
    if-eqz v27, :cond_a

    iget-object v14, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 283
    invoke-virtual {v14}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableStandaloneAppStartTracing()Z

    move-result v14

    if-eqz v14, :cond_a

    if-nez v26, :cond_a

    if-nez v24, :cond_a

    move v14, v7

    goto :goto_7

    :cond_a
    move v14, v0

    :goto_7
    move/from16 v28, v14

    .line 287
    .local v28, "createStandaloneAppStart":Z
    const-string v14, "app.vitals.start.screen"

    if-eqz v28, :cond_c

    .line 288
    new-instance v15, Lio/sentry/TransactionOptions;

    invoke-direct {v15}, Lio/sentry/TransactionOptions;-><init>()V

    .line 289
    .local v15, "appStartTransactionOptions":Lio/sentry/TransactionOptions;
    invoke-virtual {v15, v0}, Lio/sentry/TransactionOptions;->setBindToScope(Z)V

    .line 290
    invoke-virtual {v15, v13}, Lio/sentry/TransactionOptions;->setStartTimestamp(Lio/sentry/SentryDate;)V

    .line 291
    if-eqz v12, :cond_b

    move v0, v7

    :cond_b
    invoke-virtual {v15, v0}, Lio/sentry/TransactionOptions;->setAppStartTransaction(Z)V

    .line 292
    const-string v0, "auto.app.start"

    invoke-virtual {v15, v0}, Lio/sentry/TransactionOptions;->setOrigin(Ljava/lang/String;)V

    .line 294
    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->scopes:Lio/sentry/IScopes;

    new-instance v7, Lio/sentry/TransactionContext;

    sget-object v11, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    move-object/from16 v29, v3

    .end local v3    # "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .local v29, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    const-string v3, "app.start"

    move-object/from16 v30, v5

    .end local v5    # "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    .local v30, "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    const-string v5, "App Start"

    invoke-direct {v7, v5, v11, v3, v12}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V

    .line 295
    invoke-interface {v0, v7, v15}, Lio/sentry/IScopes;->startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object v0

    iput-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartTransaction:Lio/sentry/ITransaction;

    .line 302
    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartTransaction:Lio/sentry/ITransaction;

    invoke-interface {v0, v14, v4}, Lio/sentry/ITransaction;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartReason()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "appStartReason":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 305
    iget-object v3, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartTransaction:Lio/sentry/ITransaction;

    const-string v5, "app.vitals.start.reason"

    invoke-interface {v3, v5, v0}, Lio/sentry/ITransaction;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    .line 287
    .end local v0    # "appStartReason":Ljava/lang/String;
    .end local v15    # "appStartTransactionOptions":Lio/sentry/TransactionOptions;
    .end local v29    # "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .end local v30    # "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    .restart local v3    # "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .restart local v5    # "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    :cond_c
    move-object/from16 v29, v3

    move-object/from16 v30, v5

    .line 312
    .end local v3    # "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .end local v5    # "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    .restart local v29    # "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .restart local v30    # "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    :cond_d
    :goto_8
    if-eqz v28, :cond_f

    .line 313
    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartTransaction:Lio/sentry/ITransaction;

    invoke-interface {v0}, Lio/sentry/ITransaction;->toSentryTrace()Lio/sentry/SentryTraceHeader;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryTraceHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "continueSentryTrace":Ljava/lang/String;
    iget-object v3, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartTransaction:Lio/sentry/ITransaction;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lio/sentry/ITransaction;->toBaggageHeader(Ljava/util/List;)Lio/sentry/BaggageHeader;

    move-result-object v3

    .line 315
    .local v3, "baggageHeader":Lio/sentry/BaggageHeader;
    if-nez v3, :cond_e

    const/4 v5, 0x0

    goto :goto_9

    :cond_e
    invoke-virtual {v3}, Lio/sentry/BaggageHeader;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 316
    .end local v3    # "baggageHeader":Lio/sentry/BaggageHeader;
    .local v5, "continueBaggage":Ljava/lang/String;
    :goto_9
    move-object v3, v0

    goto :goto_b

    .end local v0    # "continueSentryTrace":Ljava/lang/String;
    .end local v5    # "continueBaggage":Ljava/lang/String;
    :cond_f
    if-nez v24, :cond_11

    if-eqz v26, :cond_10

    .line 317
    invoke-direct {v1, v10}, Lio/sentry/android/core/ActivityLifecycleIntegration;->isWithinAppStartContinuationWindow(Lio/sentry/SentryDate;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_a

    .line 321
    :cond_10
    const/4 v0, 0x0

    .line 322
    .restart local v0    # "continueSentryTrace":Ljava/lang/String;
    const/4 v5, 0x0

    move-object v3, v0

    .restart local v5    # "continueBaggage":Ljava/lang/String;
    goto :goto_b

    .line 318
    .end local v0    # "continueSentryTrace":Ljava/lang/String;
    .end local v5    # "continueBaggage":Ljava/lang/String;
    :cond_11
    :goto_a
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartSentryTraceHeader()Ljava/lang/String;

    move-result-object v0

    .line 319
    .restart local v0    # "continueSentryTrace":Ljava/lang/String;
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartBaggageHeader()Ljava/lang/String;

    move-result-object v5

    move-object v3, v0

    .line 325
    .end local v0    # "continueSentryTrace":Ljava/lang/String;
    .local v3, "continueSentryTrace":Ljava/lang/String;
    .restart local v5    # "continueBaggage":Ljava/lang/String;
    :goto_b
    if-eqz v24, :cond_12

    if-eqz v27, :cond_12

    .line 328
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartExtension()Lio/sentry/android/core/AppStartExtension;

    move-result-object v0

    .line 330
    invoke-virtual {v0, v14, v4}, Lio/sentry/android/core/AppStartExtension;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    :cond_12
    if-nez v3, :cond_13

    .line 335
    const/4 v0, 0x0

    goto :goto_c

    .line 336
    :cond_13
    invoke-direct {v1, v3, v5, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration;->continueUiLoadTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/TransactionContext;

    move-result-object v0

    :goto_c
    move-object v7, v0

    .line 339
    .local v7, "continuedContext":Lio/sentry/TransactionContext;
    if-eqz v7, :cond_14

    .line 340
    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0, v7, v8}, Lio/sentry/IScopes;->startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object v0

    move-object v11, v0

    .local v0, "transaction":Lio/sentry/ITransaction;
    goto :goto_d

    .line 342
    .end local v0    # "transaction":Lio/sentry/ITransaction;
    :cond_14
    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->scopes:Lio/sentry/IScopes;

    new-instance v11, Lio/sentry/TransactionContext;

    sget-object v14, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    const-string v15, "ui.load"

    invoke-direct {v11, v4, v14, v15, v12}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V

    .line 343
    invoke-interface {v0, v11, v8}, Lio/sentry/IScopes;->startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object v0

    move-object v11, v0

    .line 352
    .local v11, "transaction":Lio/sentry/ITransaction;
    :goto_d
    if-nez v26, :cond_15

    if-eqz v24, :cond_16

    .line 354
    :cond_15
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartTraceId(Lio/sentry/protocol/SentryId;)V

    .line 355
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    invoke-virtual {v0, v14}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartSentryTraceHeader(Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    invoke-virtual {v0, v14}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartBaggageHeader(Ljava/lang/String;)V

    .line 359
    :cond_16
    new-instance v23, Lio/sentry/SpanOptions;

    invoke-direct/range {v23 .. v23}, Lio/sentry/SpanOptions;-><init>()V

    move-object/from16 v15, v23

    .line 360
    .local v15, "spanOptions":Lio/sentry/SpanOptions;
    invoke-direct {v1, v15}, Lio/sentry/android/core/ActivityLifecycleIntegration;->setSpanOrigin(Lio/sentry/SpanOptions;)V

    .line 362
    if-eqz v27, :cond_18

    .line 363
    if-nez v28, :cond_17

    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableStandaloneAppStartTracing()Z

    move-result v0

    if-nez v0, :cond_17

    .line 364
    nop

    .line 366
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getAppStartOp(Z)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-direct {v1, v14}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getAppStartDesc(Z)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v12

    move-object v12, v14

    .end local v12    # "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    .local v18, "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    sget-object v14, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    .line 365
    move-object/from16 v21, v10

    move-object v10, v11

    move-object/from16 v31, v18

    move-object v11, v0

    .end local v11    # "transaction":Lio/sentry/ITransaction;
    .end local v18    # "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    .local v10, "transaction":Lio/sentry/ITransaction;
    .local v21, "ttidStartTime":Lio/sentry/SentryDate;
    .local v31, "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    invoke-interface/range {v10 .. v15}, Lio/sentry/ITransaction;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object v0

    move-object/from16 v18, v10

    move-object/from16 v23, v15

    .end local v10    # "transaction":Lio/sentry/ITransaction;
    .end local v15    # "spanOptions":Lio/sentry/SpanOptions;
    .local v18, "transaction":Lio/sentry/ITransaction;
    .local v23, "spanOptions":Lio/sentry/SpanOptions;
    iput-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    .line 372
    invoke-direct {v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishAppStartSpan()V

    goto :goto_e

    .line 363
    .end local v18    # "transaction":Lio/sentry/ITransaction;
    .end local v21    # "ttidStartTime":Lio/sentry/SentryDate;
    .end local v23    # "spanOptions":Lio/sentry/SpanOptions;
    .end local v31    # "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    .local v10, "ttidStartTime":Lio/sentry/SentryDate;
    .restart local v11    # "transaction":Lio/sentry/ITransaction;
    .restart local v12    # "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    .restart local v15    # "spanOptions":Lio/sentry/SpanOptions;
    :cond_17
    move-object/from16 v21, v10

    move-object/from16 v18, v11

    move-object/from16 v31, v12

    move-object/from16 v23, v15

    .end local v10    # "ttidStartTime":Lio/sentry/SentryDate;
    .end local v11    # "transaction":Lio/sentry/ITransaction;
    .end local v12    # "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    .end local v15    # "spanOptions":Lio/sentry/SpanOptions;
    .restart local v18    # "transaction":Lio/sentry/ITransaction;
    .restart local v21    # "ttidStartTime":Lio/sentry/SentryDate;
    .restart local v23    # "spanOptions":Lio/sentry/SpanOptions;
    .restart local v31    # "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    goto :goto_e

    .line 362
    .end local v18    # "transaction":Lio/sentry/ITransaction;
    .end local v21    # "ttidStartTime":Lio/sentry/SentryDate;
    .end local v23    # "spanOptions":Lio/sentry/SpanOptions;
    .end local v31    # "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    .restart local v10    # "ttidStartTime":Lio/sentry/SentryDate;
    .restart local v11    # "transaction":Lio/sentry/ITransaction;
    .restart local v12    # "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    .restart local v15    # "spanOptions":Lio/sentry/SpanOptions;
    :cond_18
    move-object/from16 v21, v10

    move-object/from16 v18, v11

    move-object/from16 v31, v12

    move-object/from16 v23, v15

    .line 375
    .end local v10    # "ttidStartTime":Lio/sentry/SentryDate;
    .end local v11    # "transaction":Lio/sentry/ITransaction;
    .end local v12    # "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    .end local v15    # "spanOptions":Lio/sentry/SpanOptions;
    .restart local v18    # "transaction":Lio/sentry/ITransaction;
    .restart local v21    # "ttidStartTime":Lio/sentry/SentryDate;
    .restart local v23    # "spanOptions":Lio/sentry/SpanOptions;
    .restart local v31    # "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    :goto_e
    nop

    .line 378
    invoke-direct {v1, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getTtidDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sget-object v22, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    .line 376
    const-string v19, "ui.load.initial_display"

    invoke-interface/range {v18 .. v23}, Lio/sentry/ITransaction;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object v10

    .line 382
    .local v10, "ttidSpan":Lio/sentry/ISpan;
    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2, v10}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-boolean v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->timeToFullDisplaySpanEnabled:Z

    if-eqz v0, :cond_19

    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    if-eqz v0, :cond_19

    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_19

    .line 385
    nop

    .line 388
    invoke-direct {v1, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getTtfdDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sget-object v22, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    .line 386
    const-string v19, "ui.load.full_display"

    invoke-interface/range {v18 .. v23}, Lio/sentry/ITransaction;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object v11

    move-object/from16 v12, v18

    .line 393
    .end local v18    # "transaction":Lio/sentry/ITransaction;
    .local v11, "ttfdSpan":Lio/sentry/ISpan;
    .local v12, "transaction":Lio/sentry/ITransaction;
    :try_start_0
    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2, v11}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 396
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v14, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda7;

    invoke-direct {v14, v1, v11, v10}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda7;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 397
    move-object/from16 v18, v3

    move-object v15, v4

    .end local v3    # "continueSentryTrace":Ljava/lang/String;
    .end local v4    # "activityName":Ljava/lang/String;
    .local v15, "activityName":Ljava/lang/String;
    .local v18, "continueSentryTrace":Ljava/lang/String;
    const-wide/16 v3, 0x61a8

    :try_start_1
    invoke-interface {v0, v14, v3, v4}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdAutoCloseFuture:Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 406
    goto :goto_10

    .line 399
    :catch_0
    move-exception v0

    goto :goto_f

    .end local v15    # "activityName":Ljava/lang/String;
    .end local v18    # "continueSentryTrace":Ljava/lang/String;
    .restart local v3    # "continueSentryTrace":Ljava/lang/String;
    .restart local v4    # "activityName":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v18, v3

    move-object v15, v4

    .line 400
    .end local v3    # "continueSentryTrace":Ljava/lang/String;
    .end local v4    # "activityName":Ljava/lang/String;
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    .restart local v15    # "activityName":Ljava/lang/String;
    .restart local v18    # "continueSentryTrace":Ljava/lang/String;
    :goto_f
    iget-object v3, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 401
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 402
    const-string v14, "Failed to call the executor. Time to full display span will not be finished automatically. Did you call Sentry.close()?"

    invoke-interface {v3, v4, v14, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 384
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    .end local v11    # "ttfdSpan":Lio/sentry/ISpan;
    .end local v12    # "transaction":Lio/sentry/ITransaction;
    .end local v15    # "activityName":Ljava/lang/String;
    .restart local v3    # "continueSentryTrace":Ljava/lang/String;
    .restart local v4    # "activityName":Ljava/lang/String;
    .local v18, "transaction":Lio/sentry/ITransaction;
    :cond_19
    move-object v15, v4

    move-object/from16 v12, v18

    move-object/from16 v18, v3

    .line 410
    .end local v3    # "continueSentryTrace":Ljava/lang/String;
    .end local v4    # "activityName":Ljava/lang/String;
    .restart local v12    # "transaction":Lio/sentry/ITransaction;
    .restart local v15    # "activityName":Ljava/lang/String;
    .local v18, "continueSentryTrace":Ljava/lang/String;
    :goto_10
    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->scopes:Lio/sentry/IScopes;

    new-instance v3, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1, v12}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda8;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ITransaction;)V

    invoke-interface {v0, v3}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 415
    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2, v12}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 189
    .end local v5    # "continueBaggage":Ljava/lang/String;
    .end local v6    # "foregroundImportance":Z
    .end local v7    # "continuedContext":Lio/sentry/TransactionContext;
    .end local v8    # "transactionOptions":Lio/sentry/TransactionOptions;
    .end local v9    # "coldStart":Ljava/lang/Boolean;
    .end local v10    # "ttidSpan":Lio/sentry/ISpan;
    .end local v12    # "transaction":Lio/sentry/ITransaction;
    .end local v13    # "appStartTime":Lio/sentry/SentryDate;
    .end local v15    # "activityName":Ljava/lang/String;
    .end local v16    # "deadlineTimeoutMillis":J
    .end local v18    # "continueSentryTrace":Ljava/lang/String;
    .end local v21    # "ttidStartTime":Lio/sentry/SentryDate;
    .end local v23    # "spanOptions":Lio/sentry/SpanOptions;
    .end local v24    # "isExtensionActive":Z
    .end local v25    # "storedAppStartTraceId":Lio/sentry/protocol/SentryId;
    .end local v26    # "isFollowingHeadlessAppStart":Z
    .end local v27    # "isAppStart":Z
    .end local v28    # "createStandaloneAppStart":Z
    .end local v29    # "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .end local v30    # "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    .end local v31    # "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    .local v3, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :cond_1a
    move-object/from16 v29, v3

    .line 418
    .end local v3    # "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .restart local v29    # "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :goto_11
    return-void
.end method

.method private stopPreviousTransactions()V
    .locals 6

    .line 179
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 180
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/app/Activity;Lio/sentry/ITransaction;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/ITransaction;

    .line 181
    .local v2, "transaction":Lio/sentry/ITransaction;
    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/ISpan;

    .line 182
    .local v3, "ttidSpan":Lio/sentry/ISpan;
    iget-object v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/ISpan;

    .line 183
    .local v4, "ttfdSpan":Lio/sentry/ISpan;
    invoke-direct {p0, v2, v3, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishTransaction(Lio/sentry/ITransaction;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    .line 184
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/app/Activity;Lio/sentry/ITransaction;>;"
    .end local v2    # "transaction":Lio/sentry/ITransaction;
    .end local v3    # "ttidSpan":Lio/sentry/ISpan;
    .end local v4    # "ttfdSpan":Lio/sentry/ISpan;
    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method private stopTimeSpanAtDate(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SentryDate;)V
    .locals 5
    .param p1, "timeSpan"    # Lio/sentry/android/core/performance/TimeSpan;
    .param p2, "endDate"    # Lio/sentry/SentryDate;

    .line 846
    invoke-virtual {p1}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestamp()Lio/sentry/SentryDate;

    move-result-object v0

    .line 847
    .local v0, "startDate":Lio/sentry/SentryDate;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 848
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 849
    .local v1, "durationMillis":J
    invoke-virtual {p1}, Lio/sentry/android/core/performance/TimeSpan;->getStartUptimeMs()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Lio/sentry/android/core/performance/TimeSpan;->setStoppedAt(J)V

    .line 850
    .end local v1    # "durationMillis":J
    goto :goto_0

    .line 851
    :cond_0
    invoke-virtual {p1}, Lio/sentry/android/core/performance/TimeSpan;->stop()V

    .line 853
    :goto_0
    return-void
.end method

.method private stopTracing(Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "shouldFinishTracing"    # Z

    .line 513
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 514
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ITransaction;

    .line 515
    .local v0, "transaction":Lio/sentry/ITransaction;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishTransaction(Lio/sentry/ITransaction;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    .line 517
    .end local v0    # "transaction":Lio/sentry/ITransaction;
    :cond_0
    return-void
.end method


# virtual methods
.method applyScope(Lio/sentry/IScope;Lio/sentry/ITransaction;)V
    .locals 1
    .param p1, "scope"    # Lio/sentry/IScope;
    .param p2, "transaction"    # Lio/sentry/ITransaction;

    .line 481
    new-instance v0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda3;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/IScope;Lio/sentry/ITransaction;)V

    invoke-interface {p1, v0}, Lio/sentry/IScope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    .line 496
    return-void
.end method

.method clearScope(Lio/sentry/IScope;Lio/sentry/ITransaction;)V
    .locals 1
    .param p1, "scope"    # Lio/sentry/IScope;
    .param p2, "transaction"    # Lio/sentry/ITransaction;

    .line 500
    new-instance v0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/ITransaction;Lio/sentry/IScope;)V

    invoke-interface {p1, v0}, Lio/sentry/IScope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    .line 506
    return-void
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->application:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 162
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    .line 163
    .local v0, "metrics":Lio/sentry/android/core/performance/AppStartMetrics;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/AppStartMetrics;->setHeadlessAppStartListener(Lio/sentry/android/core/performance/AppStartMetrics$HeadlessAppStartListener;)V

    .line 164
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartExtension()Lio/sentry/android/core/AppStartExtension;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/sentry/android/core/AppStartExtension;->setExtendAppStartListener(Lio/sentry/android/core/AppStartExtension$ExtendAppStartListener;)V

    .line 166
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ActivityLifecycleIntegration removed."

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    invoke-virtual {v1}, Lio/sentry/android/core/ActivityFramesTracker;->stop()V

    .line 171
    return-void
.end method

.method getActivitiesWithOngoingTransactions()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ITransaction;",
            ">;"
        }
    .end annotation

    .line 896
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method getActivityFramesTracker()Lio/sentry/android/core/ActivityFramesTracker;
    .locals 1

    .line 913
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    return-object v0
.end method

.method getActivitySpanHelpers()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;",
            ">;"
        }
    .end annotation

    .line 902
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitySpanHelpers:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method getAppStartSpan()Lio/sentry/ISpan;
    .locals 1

    .line 919
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    return-object v0
.end method

.method getTtfdSpanMap()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation

    .line 931
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method getTtidSpanMap()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation

    .line 925
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method synthetic lambda$applyScope$3$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/IScope;Lio/sentry/ITransaction;Lio/sentry/ITransaction;)V
    .locals 4
    .param p1, "scope"    # Lio/sentry/IScope;
    .param p2, "transaction"    # Lio/sentry/ITransaction;
    .param p3, "scopeTransaction"    # Lio/sentry/ITransaction;

    .line 485
    if-nez p3, :cond_0

    .line 486
    invoke-interface {p1, p2}, Lio/sentry/IScope;->setTransaction(Lio/sentry/ITransaction;)V

    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 489
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 493
    invoke-interface {p2}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 490
    const-string v3, "Transaction \'%s\' won\'t be bound to the Scope since there\'s one already in there."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$finishTransaction$5$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ITransaction;Lio/sentry/IScope;)V
    .locals 0
    .param p1, "transaction"    # Lio/sentry/ITransaction;
    .param p2, "scope"    # Lio/sentry/IScope;

    .line 546
    invoke-virtual {p0, p2, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->clearScope(Lio/sentry/IScope;Lio/sentry/ITransaction;)V

    .line 547
    return-void
.end method

.method synthetic lambda$onActivityCreated$7$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 0
    .param p1, "ttidSpan"    # Lio/sentry/ISpan;
    .param p2, "ttfdSpan"    # Lio/sentry/ISpan;

    .line 593
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onFullFrameDrawn(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    return-void
.end method

.method synthetic lambda$onActivityResumed$8$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 0
    .param p1, "ttfdSpan"    # Lio/sentry/ISpan;
    .param p2, "ttidSpan"    # Lio/sentry/ISpan;

    .line 660
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onFirstFrameDrawn(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    return-void
.end method

.method synthetic lambda$onActivityResumed$9$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 0
    .param p1, "ttfdSpan"    # Lio/sentry/ISpan;
    .param p2, "ttidSpan"    # Lio/sentry/ISpan;

    .line 664
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onFirstFrameDrawn(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    return-void
.end method

.method synthetic lambda$startTracing$0$io-sentry-android-core-ActivityLifecycleIntegration(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lio/sentry/ITransaction;)V
    .locals 5
    .param p1, "weakActivity"    # Ljava/lang/ref/WeakReference;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "finishingTransaction"    # Lio/sentry/ITransaction;

    .line 233
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 234
    .local v0, "unwrappedActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 235
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    .line 236
    invoke-interface {p3}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    .line 235
    invoke-virtual {v1, v0, v2}, Lio/sentry/android/core/ActivityFramesTracker;->setMetrics(Landroid/app/Activity;Lio/sentry/protocol/SentryId;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 240
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v3

    .line 241
    const-string v4, "Unable to track activity frames as the Activity %s has been destroyed."

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$startTracing$1$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 0
    .param p1, "ttfdSpan"    # Lio/sentry/ISpan;
    .param p2, "ttidSpan"    # Lio/sentry/ISpan;

    .line 398
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishExceededTtfdSpan(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    return-void
.end method

.method synthetic lambda$startTracing$2$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ITransaction;Lio/sentry/IScope;)V
    .locals 0
    .param p1, "transaction"    # Lio/sentry/ITransaction;
    .param p2, "scope"    # Lio/sentry/IScope;

    .line 412
    invoke-virtual {p0, p2, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->applyScope(Lio/sentry/IScope;Lio/sentry/ITransaction;)V

    .line 413
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 574
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->isAllActivityCallbacksAvailable:Z

    if-nez v0, :cond_0

    .line 575
    invoke-virtual {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 577
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 578
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableScreenTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 579
    invoke-static {p1}, Lio/sentry/android/core/internal/util/ClassUtil;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, "activityClassName":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->scopes:Lio/sentry/IScopes;

    new-instance v3, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda10;

    invoke-direct {v3, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 582
    .end local v1    # "activityClassName":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->startTracing(Landroid/app/Activity;)V

    .line 583
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISpan;

    .line 584
    .local v1, "ttidSpan":Lio/sentry/ISpan;
    iget-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/ISpan;

    .line 586
    .local v2, "ttfdSpan":Lio/sentry/ISpan;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    .line 588
    iget-boolean v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    if-eqz v3, :cond_2

    .line 592
    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    new-instance v4, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0, v1, v2}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda11;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    invoke-virtual {v3, v4}, Lio/sentry/FullyDisplayedReporter;->registerFullyDrawnListener(Lio/sentry/FullyDisplayedReporter$FullyDisplayedReporterListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    .end local v1    # "ttidSpan":Lio/sentry/ISpan;
    .end local v2    # "ttfdSpan":Lio/sentry/ISpan;
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 596
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_3
    return-void

    .line 577
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v1
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 711
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 712
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitySpanHelpers:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;

    .line 713
    .local v1, "helper":Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;
    if-eqz v1, :cond_0

    .line 714
    invoke-virtual {v1}, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->clear()V

    .line 716
    :cond_0
    iget-boolean v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v2, :cond_2

    .line 720
    iget-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    sget-object v3, Lio/sentry/SpanStatus;->CANCELLED:Lio/sentry/SpanStatus;

    invoke-direct {p0, v2, v3}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SpanStatus;)V

    .line 721
    iget-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartTransaction:Lio/sentry/ITransaction;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartTransaction:Lio/sentry/ITransaction;

    invoke-interface {v2}, Lio/sentry/ITransaction;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 722
    iget-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartTransaction:Lio/sentry/ITransaction;

    sget-object v3, Lio/sentry/SpanStatus;->CANCELLED:Lio/sentry/SpanStatus;

    invoke-interface {v2, v3}, Lio/sentry/ITransaction;->finish(Lio/sentry/SpanStatus;)V

    .line 726
    :cond_1
    iget-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/ISpan;

    .line 727
    .local v2, "ttidSpan":Lio/sentry/ISpan;
    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/ISpan;

    .line 728
    .local v3, "ttfdSpan":Lio/sentry/ISpan;
    sget-object v4, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    invoke-direct {p0, v2, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SpanStatus;)V

    .line 731
    invoke-direct {p0, v3, v2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishExceededTtfdSpan(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    .line 732
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->cancelTtfdAutoClose()V

    .line 736
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration;->stopTracing(Landroid/app/Activity;Z)V

    .line 739
    const/4 v4, 0x0

    iput-object v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    .line 740
    iput-object v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartTransaction:Lio/sentry/ITransaction;

    .line 741
    iget-object v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    iget-object v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .end local v2    # "ttidSpan":Lio/sentry/ISpan;
    .end local v3    # "ttfdSpan":Lio/sentry/ISpan;
    :cond_2
    iget-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v2

    if-nez v2, :cond_3

    .line 751
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    .end local v1    # "helper":Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 754
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_4
    return-void

    .line 711
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw v1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 690
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 692
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->isAllActivityCallbacksAvailable:Z

    if-nez v1, :cond_0

    .line 693
    invoke-virtual {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPrePaused(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 696
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 690
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 601
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitySpanHelpers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;

    .line 602
    .local v0, "helper":Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;
    if-eqz v0, :cond_0

    .line 603
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getAppStartParent(Landroid/app/Activity;)Lio/sentry/ISpan;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->createAndStopOnCreateSpan(Lio/sentry/ISpan;)V

    .line 605
    :cond_0
    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 673
    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 639
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitySpanHelpers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;

    .line 640
    .local v0, "helper":Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;
    if-eqz v0, :cond_0

    .line 641
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getAppStartParent(Landroid/app/Activity;)Lio/sentry/ISpan;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->createAndStopOnStartSpan(Lio/sentry/ISpan;)V

    .line 643
    invoke-virtual {v0}, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->saveSpanToAppStartMetrics()V

    .line 645
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishAppStartSpan()V

    .line 646
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 555
    new-instance v0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;

    .line 556
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, "helper":Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitySpanHelpers:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    if-eqz v1, :cond_0

    .line 562
    return-void

    .line 564
    :cond_0
    nop

    .line 565
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v1, :cond_1

    .line 566
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->scopes:Lio/sentry/IScopes;

    invoke-interface {v1}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v1

    invoke-interface {v1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v1

    goto :goto_0

    .line 567
    :cond_1
    invoke-static {}, Lio/sentry/android/core/AndroidDateUtils;->getCurrentSentryDateTime()Lio/sentry/SentryDate;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    .line 568
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->setOnCreateStartTimestamp(Lio/sentry/SentryDate;)V

    .line 569
    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    .line 682
    nop

    .line 683
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v0

    goto :goto_0

    .line 685
    :cond_0
    invoke-static {}, Lio/sentry/android/core/AndroidDateUtils;->getCurrentSentryDateTime()Lio/sentry/SentryDate;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    .line 686
    return-void
.end method

.method public onActivityPreStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 609
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitySpanHelpers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;

    .line 610
    .local v0, "helper":Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;
    if-eqz v0, :cond_1

    .line 611
    nop

    .line 612
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v1, :cond_0

    .line 613
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v1

    invoke-interface {v1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v1

    goto :goto_0

    .line 614
    :cond_0
    invoke-static {}, Lio/sentry/android/core/AndroidDateUtils;->getCurrentSentryDateTime()Lio/sentry/SentryDate;

    move-result-object v1

    .line 611
    :goto_0
    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->setOnStartStartTimestamp(Lio/sentry/SentryDate;)V

    .line 616
    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 650
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 651
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->isAllActivityCallbacksAvailable:Z

    if-nez v1, :cond_0

    .line 652
    invoke-virtual {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPostStarted(Landroid/app/Activity;)V

    .line 654
    :cond_0
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v1, :cond_2

    .line 656
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISpan;

    .line 657
    .local v1, "ttidSpan":Lio/sentry/ISpan;
    iget-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/ISpan;

    .line 658
    .local v2, "ttfdSpan":Lio/sentry/ISpan;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 659
    new-instance v3, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, v2, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda12;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    iget-object v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {p1, v3, v4}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->registerForNextDraw(Landroid/app/Activity;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V

    goto :goto_0

    .line 664
    :cond_1
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    .end local v1    # "ttidSpan":Lio/sentry/ISpan;
    .end local v2    # "ttfdSpan":Lio/sentry/ISpan;
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 668
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_3
    return-void

    .line 650
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 707
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 620
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 621
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->isAllActivityCallbacksAvailable:Z

    if-nez v1, :cond_0

    .line 622
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 623
    invoke-virtual {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPreStarted(Landroid/app/Activity;)V

    .line 625
    :cond_0
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v1, :cond_1

    .line 632
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    invoke-virtual {v1, p1}, Lio/sentry/android/core/ActivityFramesTracker;->addActivity(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 635
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    return-void

    .line 620
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 701
    return-void
.end method

.method public register(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 4
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 131
    nop

    .line 133
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 136
    const-string v0, "Scopes are required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IScopes;

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->scopes:Lio/sentry/IScopes;

    .line 138
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->isPerformanceEnabled(Lio/sentry/android/core/SentryAndroidOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    .line 139
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getFullyDisplayedReporter()Lio/sentry/FullyDisplayedReporter;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    .line 140
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableTimeToFullDisplayTracing()Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->timeToFullDisplaySpanEnabled:Z

    .line 142
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->application:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 144
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableStandaloneAppStartTracing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    .line 146
    .local v0, "metrics":Lio/sentry/android/core/performance/AppStartMetrics;
    new-instance v1, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda4;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;)V

    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/AppStartMetrics;->setHeadlessAppStartListener(Lio/sentry/android/core/performance/AppStartMetrics$HeadlessAppStartListener;)V

    .line 147
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartExtension()Lio/sentry/android/core/AppStartExtension;

    move-result-object v1

    new-instance v2, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda5;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;)V

    invoke-virtual {v1, v2}, Lio/sentry/android/core/AppStartExtension;->setExtendAppStartListener(Lio/sentry/android/core/AppStartExtension$ExtendAppStartListener;)V

    .line 148
    const-string v1, "StandaloneAppStart"

    invoke-static {v1}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    .line 151
    .end local v0    # "metrics":Lio/sentry/android/core/performance/AppStartMetrics;
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ActivityLifecycleIntegration installed."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    const-string v0, "ActivityLifecycle"

    invoke-static {v0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method setFirstActivityCreated(Z)V
    .locals 0
    .param p1, "firstActivityCreated"    # Z

    .line 907
    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    .line 908
    return-void
.end method
