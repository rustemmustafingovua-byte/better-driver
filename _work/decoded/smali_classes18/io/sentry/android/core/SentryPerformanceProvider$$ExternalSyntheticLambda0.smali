.class public final synthetic Lio/sentry/android/core/SentryPerformanceProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/LazyEvaluator$Evaluator;


# instance fields
.field public final synthetic f$0:Lio/sentry/SentryExecutorService;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryExecutorService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider$$ExternalSyntheticLambda0;->f$0:Lio/sentry/SentryExecutorService;

    return-void
.end method


# virtual methods
.method public final evaluate()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider$$ExternalSyntheticLambda0;->f$0:Lio/sentry/SentryExecutorService;

    invoke-static {v0}, Lio/sentry/android/core/SentryPerformanceProvider;->lambda$createAndStartTransactionProfiler$1(Lio/sentry/SentryExecutorService;)Lio/sentry/ISentryExecutorService;

    move-result-object v0

    return-object v0
.end method
