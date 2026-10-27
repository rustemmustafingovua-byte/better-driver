.class public final synthetic Lio/sentry/android/core/SentryRootCaSslSocketFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/LazyEvaluator$Evaluator;


# instance fields
.field public final synthetic f$0:Lio/sentry/ILogger;

.field public final synthetic f$1:Lio/sentry/android/core/SentryRootCaSslSocketFactory$SystemTrustedIssuersProvider;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ILogger;Lio/sentry/android/core/SentryRootCaSslSocketFactory$SystemTrustedIssuersProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/SentryRootCaSslSocketFactory$$ExternalSyntheticLambda0;->f$0:Lio/sentry/ILogger;

    iput-object p2, p0, Lio/sentry/android/core/SentryRootCaSslSocketFactory$$ExternalSyntheticLambda0;->f$1:Lio/sentry/android/core/SentryRootCaSslSocketFactory$SystemTrustedIssuersProvider;

    return-void
.end method


# virtual methods
.method public final evaluate()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/SentryRootCaSslSocketFactory$$ExternalSyntheticLambda0;->f$0:Lio/sentry/ILogger;

    iget-object v1, p0, Lio/sentry/android/core/SentryRootCaSslSocketFactory$$ExternalSyntheticLambda0;->f$1:Lio/sentry/android/core/SentryRootCaSslSocketFactory$SystemTrustedIssuersProvider;

    invoke-static {v0, v1}, Lio/sentry/android/core/SentryRootCaSslSocketFactory;->lambda$new$0(Lio/sentry/ILogger;Lio/sentry/android/core/SentryRootCaSslSocketFactory$SystemTrustedIssuersProvider;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method
