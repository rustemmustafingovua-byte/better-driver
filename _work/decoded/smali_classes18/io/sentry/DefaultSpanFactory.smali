.class public final Lio/sentry/DefaultSpanFactory;
.super Ljava/lang/Object;
.source "DefaultSpanFactory.java"

# interfaces
.implements Lio/sentry/ISpanFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSpan(Lio/sentry/IScopes;Lio/sentry/SpanOptions;Lio/sentry/SpanContext;Lio/sentry/ISpan;)Lio/sentry/ISpan;
    .locals 1
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "spanOptions"    # Lio/sentry/SpanOptions;
    .param p3, "spanContext"    # Lio/sentry/SpanContext;
    .param p4, "parentSpan"    # Lio/sentry/ISpan;

    .line 30
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object v0

    return-object v0
.end method

.method public createTransaction(Lio/sentry/TransactionContext;Lio/sentry/IScopes;Lio/sentry/TransactionOptions;Lio/sentry/CompositePerformanceCollector;)Lio/sentry/ITransaction;
    .locals 1
    .param p1, "context"    # Lio/sentry/TransactionContext;
    .param p2, "scopes"    # Lio/sentry/IScopes;
    .param p3, "transactionOptions"    # Lio/sentry/TransactionOptions;
    .param p4, "compositePerformanceCollector"    # Lio/sentry/CompositePerformanceCollector;

    .line 15
    new-instance v0, Lio/sentry/SentryTracer;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/sentry/SentryTracer;-><init>(Lio/sentry/TransactionContext;Lio/sentry/IScopes;Lio/sentry/TransactionOptions;Lio/sentry/CompositePerformanceCollector;)V

    return-object v0
.end method
