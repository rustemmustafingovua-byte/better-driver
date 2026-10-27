.class public final Lio/sentry/logger/DefaultLoggerBatchProcessorFactory;
.super Ljava/lang/Object;
.source "DefaultLoggerBatchProcessorFactory.java"

# interfaces
.implements Lio/sentry/logger/ILoggerBatchProcessorFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lio/sentry/SentryOptions;Lio/sentry/SentryClient;)Lio/sentry/logger/ILoggerBatchProcessor;
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "client"    # Lio/sentry/SentryClient;

    .line 11
    new-instance v0, Lio/sentry/logger/LoggerBatchProcessor;

    invoke-direct {v0, p1, p2}, Lio/sentry/logger/LoggerBatchProcessor;-><init>(Lio/sentry/SentryOptions;Lio/sentry/ISentryClient;)V

    return-object v0
.end method
