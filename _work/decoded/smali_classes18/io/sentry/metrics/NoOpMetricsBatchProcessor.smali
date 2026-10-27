.class public final Lio/sentry/metrics/NoOpMetricsBatchProcessor;
.super Ljava/lang/Object;
.source "NoOpMetricsBatchProcessor.java"

# interfaces
.implements Lio/sentry/metrics/IMetricsBatchProcessor;


# static fields
.field private static final instance:Lio/sentry/metrics/NoOpMetricsBatchProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lio/sentry/metrics/NoOpMetricsBatchProcessor;

    invoke-direct {v0}, Lio/sentry/metrics/NoOpMetricsBatchProcessor;-><init>()V

    sput-object v0, Lio/sentry/metrics/NoOpMetricsBatchProcessor;->instance:Lio/sentry/metrics/NoOpMetricsBatchProcessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/metrics/NoOpMetricsBatchProcessor;
    .locals 1

    .line 15
    sget-object v0, Lio/sentry/metrics/NoOpMetricsBatchProcessor;->instance:Lio/sentry/metrics/NoOpMetricsBatchProcessor;

    return-object v0
.end method


# virtual methods
.method public add(Lio/sentry/SentryMetricsEvent;)V
    .locals 0
    .param p1, "event"    # Lio/sentry/SentryMetricsEvent;

    .line 21
    return-void
.end method

.method public close(Z)V
    .locals 0
    .param p1, "isRestarting"    # Z

    .line 26
    return-void
.end method

.method public flush(J)V
    .locals 0
    .param p1, "timeoutMillis"    # J

    .line 31
    return-void
.end method
