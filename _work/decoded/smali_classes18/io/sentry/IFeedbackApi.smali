.class public interface abstract Lio/sentry/IFeedbackApi;
.super Ljava/lang/Object;
.source "IFeedbackApi.java"


# virtual methods
.method public abstract capture(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;
.end method

.method public abstract capture(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
.end method

.method public abstract capture(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
.end method

.method public abstract disableOnShake()V
.end method

.method public abstract enableOnShake()V
.end method

.method public abstract isOnShakeEnabled()Z
.end method

.method public abstract show()V
.end method

.method public abstract show(Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V
.end method

.method public abstract show(Lio/sentry/protocol/SentryId;Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V
.end method
