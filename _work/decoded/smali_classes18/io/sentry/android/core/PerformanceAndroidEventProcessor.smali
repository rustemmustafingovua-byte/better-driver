.class final Lio/sentry/android/core/PerformanceAndroidEventProcessor;
.super Ljava/lang/Object;
.source "PerformanceAndroidEventProcessor.java"

# interfaces
.implements Lio/sentry/internal/eventprocessor/SentryEventProcessor;


# static fields
.field private static final APP_METRICS_ACTIVITIES_OP:Ljava/lang/String; = "activity.load"

.field private static final APP_METRICS_APPLICATION_OP:Ljava/lang/String; = "application.load"

.field private static final APP_METRICS_CONTENT_PROVIDER_OP:Ljava/lang/String; = "contentprovider.load"

.field private static final APP_METRICS_ORIGIN:Ljava/lang/String; = "auto.ui"

.field private static final APP_METRICS_PROCESS_INIT_OP:Ljava/lang/String; = "process.load"

.field private static final MAX_PROCESS_INIT_APP_START_DIFF_MS:J = 0x2710L


# instance fields
.field private final activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;

.field private sentStartMeasurement:Z


# direct methods
.method constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ActivityFramesTracker;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p2, "activityFramesTracker"    # Lio/sentry/android/core/ActivityFramesTracker;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->sentStartMeasurement:Z

    .line 53
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 58
    const-string v0, "SentryAndroidOptions is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 59
    nop

    .line 60
    const-string v0, "ActivityFramesTracker is required"

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/ActivityFramesTracker;

    iput-object v0, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    .line 61
    return-void
.end method

.method private attachAppStartSpans(Lio/sentry/android/core/performance/AppStartMetrics;Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;Lio/sentry/protocol/SentryTransaction;)V
    .locals 11
    .param p1, "appStartMetrics"    # Lio/sentry/android/core/performance/AppStartMetrics;
    .param p2, "appStartType"    # Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;
    .param p3, "txn"    # Lio/sentry/protocol/SentryTransaction;

    .line 303
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    if-eq p2, v0, :cond_0

    .line 304
    return-void

    .line 307
    :cond_0
    invoke-virtual {p3}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v0

    .line 308
    .local v0, "traceContext":Lio/sentry/SpanContext;
    if-nez v0, :cond_1

    .line 309
    return-void

    .line 311
    :cond_1
    invoke-virtual {v0}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    .line 314
    .local v1, "traceId":Lio/sentry/protocol/SentryId;
    const/4 v2, 0x0

    .line 315
    .local v2, "parentSpanId":Lio/sentry/SpanId;
    invoke-virtual {p3}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v3

    .line 316
    .local v3, "spans":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentrySpan;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/sentry/protocol/SentrySpan;

    .line 317
    .local v5, "span":Lio/sentry/protocol/SentrySpan;
    invoke-virtual {v5}, Lio/sentry/protocol/SentrySpan;->getOp()Ljava/lang/String;

    move-result-object v6

    const-string v7, "app.start.cold"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 318
    invoke-virtual {v5}, Lio/sentry/protocol/SentrySpan;->getSpanId()Lio/sentry/SpanId;

    move-result-object v2

    .line 319
    goto :goto_1

    .line 321
    .end local v5    # "span":Lio/sentry/protocol/SentrySpan;
    :cond_2
    goto :goto_0

    .line 324
    :cond_3
    :goto_1
    const-string v4, "app.start"

    if-nez v2, :cond_4

    .line 325
    invoke-virtual {v0}, Lio/sentry/SpanContext;->getOperation()Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, "txnOp":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 327
    invoke-virtual {v0}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v2

    .line 331
    .end local v5    # "txnOp":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lio/sentry/SpanContext;->getOperation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 334
    .local v4, "isStandalone":Z
    invoke-virtual {p1}, Lio/sentry/android/core/performance/AppStartMetrics;->createProcessInitSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v5

    .line 335
    .local v5, "processInitTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    invoke-virtual {v5}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 336
    invoke-virtual {v5}, Lio/sentry/android/core/performance/TimeSpan;->getDurationMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    cmp-long v6, v6, v8

    if-gtz v6, :cond_5

    .line 337
    invoke-virtual {p3}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v6

    .line 339
    const-string v7, "process.load"

    invoke-static {v5, v2, v1, v7, v4}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->timeSpanToSentrySpan(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;Z)Lio/sentry/protocol/SentrySpan;

    move-result-object v7

    .line 338
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_5
    nop

    .line 349
    invoke-virtual {p1}, Lio/sentry/android/core/performance/AppStartMetrics;->getContentProviderOnCreateTimeSpans()Ljava/util/List;

    move-result-object v6

    .line 350
    .local v6, "contentProviderOnCreates":Ljava/util/List;, "Ljava/util/List<Lio/sentry/android/core/performance/TimeSpan;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 351
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/sentry/android/core/performance/TimeSpan;

    .line 352
    .local v8, "contentProvider":Lio/sentry/android/core/performance/TimeSpan;
    invoke-virtual {p3}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v9

    .line 354
    const-string v10, "contentprovider.load"

    invoke-static {v8, v2, v1, v10, v4}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->timeSpanToSentrySpan(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;Z)Lio/sentry/protocol/SentrySpan;

    move-result-object v10

    .line 353
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    .end local v8    # "contentProvider":Lio/sentry/android/core/performance/TimeSpan;
    goto :goto_2

    .line 364
    :cond_6
    invoke-virtual {p1}, Lio/sentry/android/core/performance/AppStartMetrics;->getApplicationOnCreateTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v7

    .line 365
    .local v7, "appOnCreate":Lio/sentry/android/core/performance/TimeSpan;
    invoke-virtual {v7}, Lio/sentry/android/core/performance/TimeSpan;->hasStopped()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 366
    invoke-virtual {p3}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v8

    .line 368
    const-string v9, "application.load"

    invoke-static {v7, v2, v1, v9, v4}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->timeSpanToSentrySpan(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;Z)Lio/sentry/protocol/SentrySpan;

    move-result-object v9

    .line 367
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_7
    return-void
.end method

.method private hasAppStartSpan(Lio/sentry/protocol/SentryTransaction;)Z
    .locals 6
    .param p1, "txn"    # Lio/sentry/protocol/SentryTransaction;

    .line 285
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v0

    .line 286
    .local v0, "spans":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentrySpan;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/protocol/SentrySpan;

    .line 287
    .local v2, "span":Lio/sentry/protocol/SentrySpan;
    invoke-virtual {v2}, Lio/sentry/protocol/SentrySpan;->getOp()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app.start.cold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 288
    invoke-virtual {v2}, Lio/sentry/protocol/SentrySpan;->getOp()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app.start.warm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 291
    .end local v2    # "span":Lio/sentry/protocol/SentrySpan;
    :cond_0
    goto :goto_0

    .line 289
    .restart local v2    # "span":Lio/sentry/protocol/SentrySpan;
    :cond_1
    :goto_1
    return v3

    .line 293
    .end local v2    # "span":Lio/sentry/protocol/SentrySpan;
    :cond_2
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v1

    .line 294
    .local v1, "context":Lio/sentry/SpanContext;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lio/sentry/SpanContext;->getOperation()Ljava/lang/String;

    move-result-object v2

    const-string v4, "app.start"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    return v3
.end method

.method private static isTimestampWithinSpan(DLio/sentry/protocol/SentrySpan;)Z
    .locals 2
    .param p0, "timestamp"    # D
    .param p2, "target"    # Lio/sentry/protocol/SentrySpan;

    .line 280
    invoke-virtual {p2}, Lio/sentry/protocol/SentrySpan;->getStartTimestamp()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_1

    .line 281
    invoke-virtual {p2}, Lio/sentry/protocol/SentrySpan;->getTimestamp()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lio/sentry/protocol/SentrySpan;->getTimestamp()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 280
    :goto_0
    return v0
.end method

.method private static setAppStartVitals(Lio/sentry/protocol/SentryTransaction;Ljava/lang/String;)V
    .locals 8
    .param p0, "transaction"    # Lio/sentry/protocol/SentryTransaction;
    .param p1, "appStartType"    # Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v0

    .line 199
    .local v0, "traceContext":Lio/sentry/SpanContext;
    if-nez v0, :cond_0

    .line 200
    return-void

    .line 203
    :cond_0
    const-string v1, "app.vitals.start.type"

    invoke-virtual {v0, v1, p1}, Lio/sentry/SpanContext;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    invoke-virtual {v0}, Lio/sentry/SpanContext;->getData()Ljava/util/Map;

    move-result-object v2

    const-string v3, "app.vitals.start.screen"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 206
    .local v2, "screen":Ljava/lang/Object;
    invoke-virtual {p0}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/sentry/protocol/SentrySpan;

    .line 207
    .local v5, "span":Lio/sentry/protocol/SentrySpan;
    invoke-virtual {v5}, Lio/sentry/protocol/SentrySpan;->getData()Ljava/util/Map;

    move-result-object v6

    .line 208
    .local v6, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v6, :cond_1

    .line 209
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v6, v7

    .line 210
    invoke-virtual {v5, v6}, Lio/sentry/protocol/SentrySpan;->setData(Ljava/util/Map;)V

    .line 212
    :cond_1
    invoke-interface {v6, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    if-eqz v2, :cond_2

    .line 214
    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .end local v5    # "span":Lio/sentry/protocol/SentrySpan;
    .end local v6    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    goto :goto_0

    .line 217
    :cond_3
    return-void
.end method

.method private setContributingFlags(Lio/sentry/protocol/SentryTransaction;)V
    .locals 12
    .param p1, "transaction"    # Lio/sentry/protocol/SentryTransaction;

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "ttidSpan":Lio/sentry/protocol/SentrySpan;
    const/4 v1, 0x0

    .line 223
    .local v1, "ttfdSpan":Lio/sentry/protocol/SentrySpan;
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/SentrySpan;

    .line 224
    .local v3, "span":Lio/sentry/protocol/SentrySpan;
    const-string v4, "ui.load.initial_display"

    invoke-virtual {v3}, Lio/sentry/protocol/SentrySpan;->getOp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    move-object v0, v3

    goto :goto_1

    .line 226
    :cond_0
    const-string v4, "ui.load.full_display"

    invoke-virtual {v3}, Lio/sentry/protocol/SentrySpan;->getOp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    move-object v1, v3

    .line 230
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 231
    goto :goto_2

    .line 233
    .end local v3    # "span":Lio/sentry/protocol/SentrySpan;
    :cond_2
    goto :goto_0

    .line 235
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 236
    return-void

    .line 239
    :cond_4
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/SentrySpan;

    .line 241
    .restart local v3    # "span":Lio/sentry/protocol/SentrySpan;
    if-eq v3, v0, :cond_5

    if-ne v3, v1, :cond_6

    .line 242
    goto :goto_3

    .line 246
    :cond_6
    const/4 v4, 0x1

    .line 247
    .local v4, "spanOnMainThread":Z
    invoke-virtual {v3}, Lio/sentry/protocol/SentrySpan;->getData()Ljava/util/Map;

    move-result-object v5

    .line 248
    .local v5, "spanData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_9

    .line 249
    const-string v8, "thread.name"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 250
    .local v8, "threadName":Ljava/lang/Object;
    if-eqz v8, :cond_8

    const-string v9, "main"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_4

    :cond_7
    move v9, v6

    goto :goto_5

    :cond_8
    :goto_4
    move v9, v7

    :goto_5
    move v4, v9

    .line 254
    .end local v8    # "threadName":Ljava/lang/Object;
    :cond_9
    if-eqz v0, :cond_a

    .line 256
    invoke-virtual {v3}, Lio/sentry/protocol/SentrySpan;->getStartTimestamp()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9, v0}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->isTimestampWithinSpan(DLio/sentry/protocol/SentrySpan;)Z

    move-result v8

    if-eqz v8, :cond_a

    if-eqz v4, :cond_a

    move v8, v7

    goto :goto_6

    :cond_a
    move v8, v6

    .line 259
    .local v8, "withinTtid":Z
    :goto_6
    if-eqz v1, :cond_b

    .line 260
    invoke-virtual {v3}, Lio/sentry/protocol/SentrySpan;->getStartTimestamp()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10, v1}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->isTimestampWithinSpan(DLio/sentry/protocol/SentrySpan;)Z

    move-result v9

    if-eqz v9, :cond_b

    move v6, v7

    goto :goto_7

    :cond_b
    nop

    .line 262
    .local v6, "withinTtfd":Z
    :goto_7
    if-nez v8, :cond_c

    if-eqz v6, :cond_f

    .line 263
    :cond_c
    invoke-virtual {v3}, Lio/sentry/protocol/SentrySpan;->getData()Ljava/util/Map;

    move-result-object v9

    .line 264
    .local v9, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v9, :cond_d

    .line 265
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v10}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v9, v10

    .line 266
    invoke-virtual {v3, v9}, Lio/sentry/protocol/SentrySpan;->setData(Ljava/util/Map;)V

    .line 268
    :cond_d
    if-eqz v8, :cond_e

    .line 269
    const-string v10, "ui.contributes_to_ttid"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_e
    if-eqz v6, :cond_f

    .line 272
    const-string v10, "ui.contributes_to_ttfd"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .end local v3    # "span":Lio/sentry/protocol/SentrySpan;
    .end local v4    # "spanOnMainThread":Z
    .end local v5    # "spanData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "withinTtfd":Z
    .end local v8    # "withinTtid":Z
    .end local v9    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_f
    goto/16 :goto_3

    .line 276
    :cond_10
    return-void
.end method

.method private static timeSpanToSentrySpan(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;Z)Lio/sentry/protocol/SentrySpan;
    .locals 15
    .param p0, "span"    # Lio/sentry/android/core/performance/TimeSpan;
    .param p1, "parentSpanId"    # Lio/sentry/SpanId;
    .param p2, "traceId"    # Lio/sentry/protocol/SentryId;
    .param p3, "operation"    # Ljava/lang/String;
    .param p4, "isStandaloneAppStart"    # Z

    .line 381
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    move-object v14, v0

    .line 382
    .local v14, "defaultSpanData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-wide v0, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->mainThreadSystemId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "thread.id"

    invoke-interface {v14, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v0, "thread.name"

    const-string v1, "main"

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    if-nez p4, :cond_0

    .line 386
    const-string v0, "ui.contributes_to_ttid"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v14, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v0, "ui.contributes_to_ttfd"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_0
    new-instance v2, Lio/sentry/protocol/SentrySpan;

    .line 391
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestampSecs()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 392
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getProjectedStopTimestampSecs()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-instance v6, Lio/sentry/SpanId;

    invoke-direct {v6}, Lio/sentry/SpanId;-><init>()V

    .line 397
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getDescription()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    new-instance v12, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v12}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v13, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v13}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const-string v11, "auto.ui"

    move-object/from16 v7, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v14}, Lio/sentry/protocol/SentrySpan;-><init>(Ljava/lang/Double;Ljava/lang/Double;Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanStatus;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 390
    return-object v2
.end method


# virtual methods
.method public getOrder()Ljava/lang/Long;
    .locals 2

    .line 407
    const-wide/16 v0, 0x2328

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 0
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 76
    return-object p1
.end method

.method public process(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 22
    .param p1, "transaction"    # Lio/sentry/protocol/SentryTransaction;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 83
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v3

    .line 84
    .local v3, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v0, v1, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isTracingEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_1

    .line 85
    nop

    .line 193
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 85
    :cond_0
    return-object v2

    .line 88
    :cond_1
    :try_start_1
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    .line 92
    .local v0, "appStartMetrics":Lio/sentry/android/core/performance/AppStartMetrics;
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartType()Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    move-result-object v4

    .line 95
    .local v4, "appStartType":Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;
    invoke-direct/range {p0 .. p1}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->hasAppStartSpan(Lio/sentry/protocol/SentryTransaction;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 98
    invoke-virtual {v2}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 99
    .local v5, "traceContext":Lio/sentry/SpanContext;
    if-eqz v5, :cond_2

    :try_start_2
    const-string v8, "app.start"

    .line 100
    invoke-virtual {v5}, Lio/sentry/SpanContext;->getOperation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "appStartMetrics":Lio/sentry/android/core/performance/AppStartMetrics;
    .end local v4    # "appStartType":Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;
    .end local v5    # "traceContext":Lio/sentry/SpanContext;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v3

    move-object v3, v0

    goto/16 :goto_c

    .line 100
    .restart local v0    # "appStartMetrics":Lio/sentry/android/core/performance/AppStartMetrics;
    .restart local v4    # "appStartType":Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;
    .restart local v5    # "traceContext":Lio/sentry/SpanContext;
    :cond_2
    const/4 v8, 0x0

    .line 101
    .local v8, "isStandaloneAppStartTxn":Z
    :goto_0
    if-eqz v5, :cond_3

    if-eqz v8, :cond_3

    .line 104
    invoke-virtual {v5}, Lio/sentry/SpanContext;->getData()Ljava/util/Map;

    move-result-object v9

    const-string v10, "app.vitals.start.screen"

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    .line 106
    .local v9, "isHeadlessStandaloneAppStartTxn":Z
    :goto_1
    :try_start_3
    invoke-virtual {v0, v9}, Lio/sentry/android/core/performance/AppStartMetrics;->shouldSendStartMeasurements(Z)Z

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v10, :cond_c

    .line 108
    if-eqz v9, :cond_4

    .line 109
    :try_start_4
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpanForHeadless()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 110
    :cond_4
    :try_start_5
    iget-object v10, v1, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0, v10}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpanWithFallback(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v10

    :goto_2
    nop

    .line 111
    .local v10, "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    invoke-virtual {v10}, Lio/sentry/android/core/performance/TimeSpan;->getDurationMs()J

    move-result-wide v11

    .line 116
    .local v11, "naturalDurationMs":J
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartExtension()Lio/sentry/android/core/AppStartExtension;

    move-result-object v13

    .line 117
    .local v13, "extension":Lio/sentry/android/core/AppStartExtension;
    invoke-virtual {v13}, Lio/sentry/android/core/AppStartExtension;->isExtended()Z

    move-result v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-wide/16 v15, 0x0

    if-eqz v14, :cond_7

    .line 118
    :try_start_6
    invoke-virtual {v13}, Lio/sentry/android/core/AppStartExtension;->getExtendedEndTime()Lio/sentry/SentryDate;

    move-result-object v14

    .line 119
    .local v14, "extendedEnd":Lio/sentry/SentryDate;
    if-eqz v14, :cond_6

    invoke-virtual {v10}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 122
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 123
    move/from16 v19, v8

    .end local v8    # "isStandaloneAppStartTxn":Z
    .local v19, "isStandaloneAppStartTxn":Z
    invoke-virtual {v14}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 124
    invoke-virtual {v10}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestampMs()J

    move-result-wide v20

    sub-long v6, v6, v20

    .line 125
    .local v6, "extendedDurationMs":J
    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    .line 126
    .local v20, "appStartUpDurationMs":J
    cmp-long v8, v20, v15

    if-eqz v8, :cond_5

    const/16 v17, 0x1

    goto :goto_3

    :cond_5
    const/16 v17, 0x0

    .line 127
    .local v17, "shouldAttachAppStartSpans":Z
    :goto_3
    move/from16 v6, v17

    .line 128
    .local v6, "reportAppStartMeasurement":Z
    goto :goto_4

    .line 119
    .end local v6    # "reportAppStartMeasurement":Z
    .end local v17    # "shouldAttachAppStartSpans":Z
    .end local v19    # "isStandaloneAppStartTxn":Z
    .end local v20    # "appStartUpDurationMs":J
    .restart local v8    # "isStandaloneAppStartTxn":Z
    :cond_6
    move/from16 v19, v8

    .line 131
    .end local v8    # "isStandaloneAppStartTxn":Z
    .restart local v19    # "isStandaloneAppStartTxn":Z
    const-wide/16 v20, 0x0

    .line 132
    .restart local v20    # "appStartUpDurationMs":J
    invoke-virtual {v10}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v17, v6

    .line 133
    .restart local v17    # "shouldAttachAppStartSpans":Z
    const/4 v6, 0x0

    .line 135
    .end local v14    # "extendedEnd":Lio/sentry/SentryDate;
    .restart local v6    # "reportAppStartMeasurement":Z
    :goto_4
    move-wide/from16 v7, v20

    goto :goto_6

    .line 136
    .end local v6    # "reportAppStartMeasurement":Z
    .end local v17    # "shouldAttachAppStartSpans":Z
    .end local v19    # "isStandaloneAppStartTxn":Z
    .end local v20    # "appStartUpDurationMs":J
    .restart local v8    # "isStandaloneAppStartTxn":Z
    :cond_7
    move/from16 v19, v8

    .end local v8    # "isStandaloneAppStartTxn":Z
    .restart local v19    # "isStandaloneAppStartTxn":Z
    move-wide/from16 v20, v11

    .line 137
    .restart local v20    # "appStartUpDurationMs":J
    cmp-long v6, v20, v15

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    :goto_5
    move/from16 v17, v6

    .line 138
    .restart local v17    # "shouldAttachAppStartSpans":Z
    move-wide/from16 v7, v20

    .line 141
    .end local v20    # "appStartUpDurationMs":J
    .restart local v6    # "reportAppStartMeasurement":Z
    .local v7, "appStartUpDurationMs":J
    :goto_6
    if-eqz v17, :cond_b

    .line 142
    if-eqz v6, :cond_a

    .line 143
    :try_start_7
    new-instance v14, Lio/sentry/protocol/MeasurementValue;

    long-to-float v15, v7

    .line 145
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    sget-object v16, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v18, v3

    .end local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .local v18, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Lio/sentry/MeasurementUnit$Duration;->apiName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v15, v3}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 148
    .local v14, "value":Lio/sentry/protocol/MeasurementValue;
    sget-object v3, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    if-ne v4, v3, :cond_9

    .line 149
    const-string v3, "app_start_cold"

    goto :goto_7

    .line 150
    :cond_9
    const-string v3, "app_start_warm"

    :goto_7
    nop

    .line 152
    .local v3, "appStartKey":Ljava/lang/String;
    invoke-virtual {v2}, Lio/sentry/protocol/SentryTransaction;->getMeasurements()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 142
    .end local v14    # "value":Lio/sentry/protocol/MeasurementValue;
    .end local v18    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .local v3, "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_a
    move-object/from16 v18, v3

    .line 155
    .end local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v18    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :goto_8
    invoke-direct {v1, v0, v4, v2}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->attachAppStartSpans(Lio/sentry/android/core/performance/AppStartMetrics;Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;Lio/sentry/protocol/SentryTransaction;)V

    .line 156
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->onAppStartSpansSent()V

    goto :goto_9

    .line 141
    .end local v18    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_b
    move-object/from16 v18, v3

    .end local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v18    # "ignored":Lio/sentry/ISentryLifecycleToken;
    goto :goto_9

    .line 106
    .end local v6    # "reportAppStartMeasurement":Z
    .end local v7    # "appStartUpDurationMs":J
    .end local v10    # "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    .end local v11    # "naturalDurationMs":J
    .end local v13    # "extension":Lio/sentry/android/core/AppStartExtension;
    .end local v17    # "shouldAttachAppStartSpans":Z
    .end local v18    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .end local v19    # "isStandaloneAppStartTxn":Z
    .restart local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v8    # "isStandaloneAppStartTxn":Z
    :cond_c
    move-object/from16 v18, v3

    move/from16 v19, v8

    .line 160
    .end local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .end local v8    # "isStandaloneAppStartTxn":Z
    .restart local v18    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v19    # "isStandaloneAppStartTxn":Z
    :goto_9
    invoke-virtual {v2}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/App;

    move-result-object v3

    .line 161
    .local v3, "appContext":Lio/sentry/protocol/App;
    if-nez v3, :cond_d

    .line 162
    new-instance v6, Lio/sentry/protocol/App;

    invoke-direct {v6}, Lio/sentry/protocol/App;-><init>()V

    move-object v3, v6

    .line 163
    invoke-virtual {v2}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v6

    invoke-virtual {v6, v3}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    .line 166
    :cond_d
    sget-object v6, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    if-ne v4, v6, :cond_e

    const-string v6, "cold"

    goto :goto_a

    :cond_e
    const-string v6, "warm"

    .line 167
    .local v6, "appStartTypeName":Ljava/lang/String;
    :goto_a
    invoke-virtual {v3, v6}, Lio/sentry/protocol/App;->setStartType(Ljava/lang/String;)V

    .line 169
    if-eqz v19, :cond_10

    .line 170
    invoke-static {v2, v6}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->setAppStartVitals(Lio/sentry/protocol/SentryTransaction;Ljava/lang/String;)V

    goto :goto_b

    .line 95
    .end local v5    # "traceContext":Lio/sentry/SpanContext;
    .end local v6    # "appStartTypeName":Ljava/lang/String;
    .end local v9    # "isHeadlessStandaloneAppStartTxn":Z
    .end local v18    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .end local v19    # "isStandaloneAppStartTxn":Z
    .local v3, "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_f
    move-object/from16 v18, v3

    .line 174
    .end local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v18    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_10
    :goto_b
    invoke-direct/range {p0 .. p1}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->setContributingFlags(Lio/sentry/protocol/SentryTransaction;)V

    .line 176
    invoke-virtual {v2}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    .line 177
    .local v3, "eventId":Lio/sentry/protocol/SentryId;
    invoke-virtual {v2}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v5

    .line 182
    .local v5, "spanContext":Lio/sentry/SpanContext;
    if-eqz v3, :cond_11

    if-eqz v5, :cond_11

    .line 184
    invoke-virtual {v5}, Lio/sentry/SpanContext;->getOperation()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ui.load"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 185
    iget-object v6, v1, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    .line 186
    invoke-virtual {v6, v3}, Lio/sentry/android/core/ActivityFramesTracker;->takeMetrics(Lio/sentry/protocol/SentryId;)Ljava/util/Map;

    move-result-object v6

    .line 187
    .local v6, "framesMetrics":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
    if-eqz v6, :cond_11

    .line 188
    invoke-virtual {v2}, Lio/sentry/protocol/SentryTransaction;->getMeasurements()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 192
    .end local v6    # "framesMetrics":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
    :cond_11
    nop

    .line 193
    if-eqz v18, :cond_12

    invoke-interface/range {v18 .. v18}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 192
    :cond_12
    return-object v2

    .line 83
    .end local v0    # "appStartMetrics":Lio/sentry/android/core/performance/AppStartMetrics;
    .end local v3    # "eventId":Lio/sentry/protocol/SentryId;
    .end local v4    # "appStartType":Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;
    .end local v5    # "spanContext":Lio/sentry/SpanContext;
    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_c

    .end local v18    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .local v3, "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_2
    move-exception v0

    move-object/from16 v18, v3

    move-object v3, v0

    .end local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v18    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :goto_c
    if-eqz v18, :cond_13

    :try_start_9
    invoke-interface/range {v18 .. v18}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_d

    :catchall_3
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13
    :goto_d
    throw v3
.end method
