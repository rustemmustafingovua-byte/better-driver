.class public interface abstract Lio/sentry/ReplayController;
.super Ljava/lang/Object;
.source "ReplayController.java"

# interfaces
.implements Lio/sentry/IReplayApi;


# virtual methods
.method public abstract captureReplay(Ljava/lang/Boolean;)Lio/sentry/protocol/SentryId;
.end method

.method public abstract getBreadcrumbConverter()Lio/sentry/ReplayBreadcrumbConverter;
.end method

.method public abstract getReplayId()Lio/sentry/protocol/SentryId;
.end method

.method public abstract isDebugMaskingOverlayEnabled()Z
.end method

.method public abstract isRecording()Z
.end method

.method public abstract onAppBackgrounded()V
.end method

.method public abstract onAppForegrounded(Z)V
.end method

.method public abstract onAppSessionEnded()V
.end method

.method public abstract registerSegmentName(Ljava/lang/String;)V
.end method

.method public abstract registerTraceId(Lio/sentry/protocol/SentryId;)V
.end method

.method public abstract setBreadcrumbConverter(Lio/sentry/ReplayBreadcrumbConverter;)V
.end method
