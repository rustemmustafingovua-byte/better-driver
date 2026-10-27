.class public interface abstract Lio/sentry/transport/RateLimiterConfig;
.super Ljava/lang/Object;
.source "RateLimiterConfig.java"


# virtual methods
.method public abstract getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;
.end method

.method public abstract getLogger()Lio/sentry/ILogger;
.end method

.method public abstract getTimerExecutorService()Lio/sentry/ISentryExecutorService;
.end method
