.class public final Lio/sentry/android/core/AndroidMetricsBatchProcessorFactory;
.super Ljava/lang/Object;
.source "AndroidMetricsBatchProcessorFactory.java"

# interfaces
.implements Lio/sentry/metrics/IMetricsBatchProcessorFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lio/sentry/SentryOptions;Lio/sentry/SentryClient;)Lio/sentry/metrics/IMetricsBatchProcessor;
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "client"    # Lio/sentry/SentryClient;

    .line 13
    new-instance v0, Lio/sentry/android/core/AndroidMetricsBatchProcessor;

    invoke-direct {v0, p1, p2}, Lio/sentry/android/core/AndroidMetricsBatchProcessor;-><init>(Lio/sentry/SentryOptions;Lio/sentry/ISentryClient;)V

    return-object v0
.end method
