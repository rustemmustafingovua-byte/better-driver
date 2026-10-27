.class public interface abstract Lio/sentry/IContinuousProfiler;
.super Ljava/lang/Object;
.source "IContinuousProfiler.java"


# virtual methods
.method public abstract close(Z)V
.end method

.method public abstract getChunkId()Lio/sentry/protocol/SentryId;
.end method

.method public abstract getProfileRecordingState(Lio/sentry/protocol/SentryId;Lio/sentry/SentryDate;Lio/sentry/SentryDate;)Lio/sentry/profiling/ProfileRecordingState;
.end method

.method public abstract getProfilerId()Lio/sentry/protocol/SentryId;
.end method

.method public abstract isRunning()Z
.end method

.method public abstract reevaluateSampling()V
.end method

.method public abstract startProfiler(Lio/sentry/ProfileLifecycle;Lio/sentry/TracesSampler;)V
.end method

.method public abstract stopProfiler(Lio/sentry/ProfileLifecycle;)V
.end method
