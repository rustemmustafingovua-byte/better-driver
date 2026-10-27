.class public interface abstract Lio/sentry/EventProcessor;
.super Ljava/lang/Object;
.source "EventProcessor.java"


# virtual methods
.method public getOrder()Ljava/lang/Long;
    .locals 1

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 0
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 21
    return-object p1
.end method

.method public process(Lio/sentry/SentryLogEvent;)Lio/sentry/SentryLogEvent;
    .locals 0
    .param p1, "event"    # Lio/sentry/SentryLogEvent;

    .line 56
    return-object p1
.end method

.method public process(Lio/sentry/SentryMetricsEvent;Lio/sentry/Hint;)Lio/sentry/SentryMetricsEvent;
    .locals 0
    .param p1, "event"    # Lio/sentry/SentryMetricsEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 67
    return-object p1
.end method

.method public process(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/SentryReplayEvent;
    .locals 0
    .param p1, "event"    # Lio/sentry/SentryReplayEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 45
    return-object p1
.end method

.method public process(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 0
    .param p1, "transaction"    # Lio/sentry/protocol/SentryTransaction;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 33
    return-object p1
.end method
