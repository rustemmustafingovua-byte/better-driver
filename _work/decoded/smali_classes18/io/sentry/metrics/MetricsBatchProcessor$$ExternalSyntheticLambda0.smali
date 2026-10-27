.class public final synthetic Lio/sentry/metrics/MetricsBatchProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/metrics/MetricsBatchProcessor;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/metrics/MetricsBatchProcessor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/metrics/MetricsBatchProcessor$$ExternalSyntheticLambda0;->f$0:Lio/sentry/metrics/MetricsBatchProcessor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor$$ExternalSyntheticLambda0;->f$0:Lio/sentry/metrics/MetricsBatchProcessor;

    invoke-virtual {v0}, Lio/sentry/metrics/MetricsBatchProcessor;->lambda$close$0$io-sentry-metrics-MetricsBatchProcessor()V

    return-void
.end method
