.class public interface abstract Lio/sentry/metrics/IMetricsApi;
.super Ljava/lang/Object;
.source "IMetricsApi.java"


# virtual methods
.method public abstract count(Ljava/lang/String;)V
.end method

.method public abstract count(Ljava/lang/String;Ljava/lang/Double;)V
.end method

.method public abstract count(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
.end method

.method public abstract count(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Lio/sentry/metrics/SentryMetricsParameters;)V
.end method

.method public abstract count(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract distribution(Ljava/lang/String;Ljava/lang/Double;)V
.end method

.method public abstract distribution(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
.end method

.method public abstract distribution(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Lio/sentry/metrics/SentryMetricsParameters;)V
.end method

.method public abstract gauge(Ljava/lang/String;Ljava/lang/Double;)V
.end method

.method public abstract gauge(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
.end method

.method public abstract gauge(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Lio/sentry/metrics/SentryMetricsParameters;)V
.end method
