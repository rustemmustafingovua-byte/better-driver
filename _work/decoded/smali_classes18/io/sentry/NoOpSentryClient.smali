.class final Lio/sentry/NoOpSentryClient;
.super Ljava/lang/Object;
.source "NoOpSentryClient.java"

# interfaces
.implements Lio/sentry/ISentryClient;


# static fields
.field private static final instance:Lio/sentry/NoOpSentryClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lio/sentry/NoOpSentryClient;

    invoke-direct {v0}, Lio/sentry/NoOpSentryClient;-><init>()V

    sput-object v0, Lio/sentry/NoOpSentryClient;->instance:Lio/sentry/NoOpSentryClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpSentryClient;
    .locals 1

    .line 18
    sget-object v0, Lio/sentry/NoOpSentryClient;->instance:Lio/sentry/NoOpSentryClient;

    return-object v0
.end method


# virtual methods
.method public captureBatchedLogEvents(Lio/sentry/SentryLogEvents;)V
    .locals 0
    .param p1, "logEvents"    # Lio/sentry/SentryLogEvents;

    .line 102
    return-void
.end method

.method public captureBatchedMetricsEvents(Lio/sentry/SentryMetricsEvents;)V
    .locals 0
    .param p1, "metricsEvents"    # Lio/sentry/SentryMetricsEvents;

    .line 108
    return-void
.end method

.method public captureCheckIn(Lio/sentry/CheckIn;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "checkIn"    # Lio/sentry/CheckIn;
    .param p2, "scope"    # Lio/sentry/IScope;
    .param p3, "hint"    # Lio/sentry/Hint;

    .line 78
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 56
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "scope"    # Lio/sentry/IScope;
    .param p3, "hint"    # Lio/sentry/Hint;

    .line 29
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureFeedback(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;Lio/sentry/IScope;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "feedback"    # Lio/sentry/protocol/Feedback;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "scope"    # Lio/sentry/IScope;

    .line 44
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureLog(Lio/sentry/SentryLogEvent;Lio/sentry/IScope;)V
    .locals 0
    .param p1, "logEvent"    # Lio/sentry/SentryLogEvent;
    .param p2, "scope"    # Lio/sentry/IScope;

    .line 90
    return-void
.end method

.method public captureMetric(Lio/sentry/SentryMetricsEvent;Lio/sentry/IScope;Lio/sentry/Hint;)V
    .locals 0
    .param p1, "metricsEvent"    # Lio/sentry/SentryMetricsEvent;
    .param p2, "scope"    # Lio/sentry/IScope;
    .param p3, "hint"    # Lio/sentry/Hint;

    .line 96
    return-void
.end method

.method public captureProfileChunk(Lio/sentry/ProfileChunk;Lio/sentry/IScope;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "profileChunk"    # Lio/sentry/ProfileChunk;
    .param p2, "scope"    # Lio/sentry/IScope;

    .line 72
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureReplayEvent(Lio/sentry/SentryReplayEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryReplayEvent;
    .param p2, "scope"    # Lio/sentry/IScope;
    .param p3, "hint"    # Lio/sentry/Hint;

    .line 84
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureSession(Lio/sentry/Session;Lio/sentry/Hint;)V
    .locals 0
    .param p1, "session"    # Lio/sentry/Session;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 52
    return-void
.end method

.method public captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "transaction"    # Lio/sentry/protocol/SentryTransaction;
    .param p2, "traceContext"    # Lio/sentry/TraceContext;
    .param p3, "scope"    # Lio/sentry/IScope;
    .param p4, "hint"    # Lio/sentry/Hint;
    .param p5, "profilingTraceData"    # Lio/sentry/ProfilingTraceData;

    .line 66
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureUserFeedback(Lio/sentry/UserFeedback;)V
    .locals 0
    .param p1, "userFeedback"    # Lio/sentry/UserFeedback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    return-void
.end method

.method public close()V
    .locals 0

    .line 36
    return-void
.end method

.method public close(Z)V
    .locals 0
    .param p1, "isRestarting"    # Z

    .line 33
    return-void
.end method

.method public flush(J)V
    .locals 0
    .param p1, "timeoutMillis"    # J

    .line 39
    return-void
.end method

.method public getRateLimiter()Lio/sentry/transport/RateLimiter;
    .locals 1

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 23
    const/4 v0, 0x0

    return v0
.end method
