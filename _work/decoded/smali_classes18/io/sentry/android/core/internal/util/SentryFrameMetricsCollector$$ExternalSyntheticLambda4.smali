.class public final synthetic Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda4;->f$0:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda4;->f$0:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    invoke-virtual {v0, p1, p2}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lambda$ensureHandlerThreadStarted$2$io-sentry-android-core-internal-util-SentryFrameMetricsCollector(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
