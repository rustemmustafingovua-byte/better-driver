.class public final Lio/sentry/metrics/NoOpMetricsApi;
.super Ljava/lang/Object;
.source "NoOpMetricsApi.java"

# interfaces
.implements Lio/sentry/metrics/IMetricsApi;


# static fields
.field private static final instance:Lio/sentry/metrics/NoOpMetricsApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lio/sentry/metrics/NoOpMetricsApi;

    invoke-direct {v0}, Lio/sentry/metrics/NoOpMetricsApi;-><init>()V

    sput-object v0, Lio/sentry/metrics/NoOpMetricsApi;->instance:Lio/sentry/metrics/NoOpMetricsApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/metrics/NoOpMetricsApi;
    .locals 1

    .line 14
    sget-object v0, Lio/sentry/metrics/NoOpMetricsApi;->instance:Lio/sentry/metrics/NoOpMetricsApi;

    return-object v0
.end method


# virtual methods
.method public count(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 18
    return-void
.end method

.method public count(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;

    .line 21
    return-void
.end method

.method public count(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
    .param p3, "unit"    # Ljava/lang/String;

    .line 28
    return-void
.end method

.method public count(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Lio/sentry/metrics/SentryMetricsParameters;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
    .param p3, "unit"    # Ljava/lang/String;
    .param p4, "params"    # Lio/sentry/metrics/SentryMetricsParameters;

    .line 35
    return-void
.end method

.method public count(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "unit"    # Ljava/lang/String;

    .line 24
    return-void
.end method

.method public distribution(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;

    .line 38
    return-void
.end method

.method public distribution(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
    .param p3, "unit"    # Ljava/lang/String;

    .line 42
    return-void
.end method

.method public distribution(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Lio/sentry/metrics/SentryMetricsParameters;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
    .param p3, "unit"    # Ljava/lang/String;
    .param p4, "params"    # Lio/sentry/metrics/SentryMetricsParameters;

    .line 49
    return-void
.end method

.method public gauge(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;

    .line 52
    return-void
.end method

.method public gauge(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
    .param p3, "unit"    # Ljava/lang/String;

    .line 56
    return-void
.end method

.method public gauge(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Lio/sentry/metrics/SentryMetricsParameters;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
    .param p3, "unit"    # Ljava/lang/String;
    .param p4, "params"    # Lio/sentry/metrics/SentryMetricsParameters;

    .line 63
    return-void
.end method
