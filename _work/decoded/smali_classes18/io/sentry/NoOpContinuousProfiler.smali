.class public final Lio/sentry/NoOpContinuousProfiler;
.super Ljava/lang/Object;
.source "NoOpContinuousProfiler.java"

# interfaces
.implements Lio/sentry/IContinuousProfiler;


# static fields
.field private static final instance:Lio/sentry/NoOpContinuousProfiler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lio/sentry/NoOpContinuousProfiler;

    invoke-direct {v0}, Lio/sentry/NoOpContinuousProfiler;-><init>()V

    sput-object v0, Lio/sentry/NoOpContinuousProfiler;->instance:Lio/sentry/NoOpContinuousProfiler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpContinuousProfiler;
    .locals 1

    .line 16
    sget-object v0, Lio/sentry/NoOpContinuousProfiler;->instance:Lio/sentry/NoOpContinuousProfiler;

    return-object v0
.end method


# virtual methods
.method public close(Z)V
    .locals 0
    .param p1, "isTerminating"    # Z

    .line 33
    return-void
.end method

.method public getChunkId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 45
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getProfileRecordingState(Lio/sentry/protocol/SentryId;Lio/sentry/SentryDate;Lio/sentry/SentryDate;)Lio/sentry/profiling/ProfileRecordingState;
    .locals 1
    .param p1, "profilerId"    # Lio/sentry/protocol/SentryId;
    .param p2, "startTime"    # Lio/sentry/SentryDate;
    .param p3, "endTime"    # Lio/sentry/SentryDate;

    .line 53
    sget-object v0, Lio/sentry/profiling/ProfileRecordingState;->UNKNOWN:Lio/sentry/profiling/ProfileRecordingState;

    return-object v0
.end method

.method public getProfilerId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 40
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public reevaluateSampling()V
    .locals 0

    .line 36
    return-void
.end method

.method public startProfiler(Lio/sentry/ProfileLifecycle;Lio/sentry/TracesSampler;)V
    .locals 0
    .param p1, "profileLifecycle"    # Lio/sentry/ProfileLifecycle;
    .param p2, "tracesSampler"    # Lio/sentry/TracesSampler;

    .line 30
    return-void
.end method

.method public stopProfiler(Lio/sentry/ProfileLifecycle;)V
    .locals 0
    .param p1, "profileLifecycle"    # Lio/sentry/ProfileLifecycle;

    .line 20
    return-void
.end method
