.class public final Lio/sentry/SentryOptions$Metrics;
.super Ljava/lang/Object;
.source "SentryOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metrics"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryOptions$Metrics$BeforeSendMetricCallback;
    }
.end annotation


# instance fields
.field private beforeSend:Lio/sentry/SentryOptions$Metrics$BeforeSendMetricCallback;

.field private enable:Z

.field private metricsBatchProcessorFactory:Lio/sentry/metrics/IMetricsBatchProcessorFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/SentryOptions$Metrics;->enable:Z

    .line 4204
    new-instance v0, Lio/sentry/metrics/DefaultMetricsBatchProcessorFactory;

    invoke-direct {v0}, Lio/sentry/metrics/DefaultMetricsBatchProcessorFactory;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryOptions$Metrics;->metricsBatchProcessorFactory:Lio/sentry/metrics/IMetricsBatchProcessorFactory;

    return-void
.end method


# virtual methods
.method public getBeforeSend()Lio/sentry/SentryOptions$Metrics$BeforeSendMetricCallback;
    .locals 1

    .line 4237
    iget-object v0, p0, Lio/sentry/SentryOptions$Metrics;->beforeSend:Lio/sentry/SentryOptions$Metrics$BeforeSendMetricCallback;

    return-object v0
.end method

.method public getMetricsBatchProcessorFactory()Lio/sentry/metrics/IMetricsBatchProcessorFactory;
    .locals 1

    .line 4251
    iget-object v0, p0, Lio/sentry/SentryOptions$Metrics;->metricsBatchProcessorFactory:Lio/sentry/metrics/IMetricsBatchProcessorFactory;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 4216
    iget-boolean v0, p0, Lio/sentry/SentryOptions$Metrics;->enable:Z

    return v0
.end method

.method public setBeforeSend(Lio/sentry/SentryOptions$Metrics$BeforeSendMetricCallback;)V
    .locals 0
    .param p1, "beforeSend"    # Lio/sentry/SentryOptions$Metrics$BeforeSendMetricCallback;

    .line 4246
    iput-object p1, p0, Lio/sentry/SentryOptions$Metrics;->beforeSend:Lio/sentry/SentryOptions$Metrics$BeforeSendMetricCallback;

    .line 4247
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enableMetrics"    # Z

    .line 4228
    iput-boolean p1, p0, Lio/sentry/SentryOptions$Metrics;->enable:Z

    .line 4229
    return-void
.end method

.method public setMetricsBatchProcessorFactory(Lio/sentry/metrics/IMetricsBatchProcessorFactory;)V
    .locals 0
    .param p1, "metricsBatchProcessorFactory"    # Lio/sentry/metrics/IMetricsBatchProcessorFactory;

    .line 4257
    iput-object p1, p0, Lio/sentry/SentryOptions$Metrics;->metricsBatchProcessorFactory:Lio/sentry/metrics/IMetricsBatchProcessorFactory;

    .line 4258
    return-void
.end method
