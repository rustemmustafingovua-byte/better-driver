.class public final synthetic Lio/sentry/android/core/internal/util/ScreenshotMasking$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lio/sentry/android/core/SentryScreenshotOptions;

.field public final synthetic f$3:Lio/sentry/ILogger;

.field public final synthetic f$4:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Landroid/app/Activity;Lio/sentry/android/core/SentryScreenshotOptions;Lio/sentry/ILogger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/util/ScreenshotMasking$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lio/sentry/android/core/internal/util/ScreenshotMasking$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lio/sentry/android/core/internal/util/ScreenshotMasking$$ExternalSyntheticLambda0;->f$2:Lio/sentry/android/core/SentryScreenshotOptions;

    iput-object p4, p0, Lio/sentry/android/core/internal/util/ScreenshotMasking$$ExternalSyntheticLambda0;->f$3:Lio/sentry/ILogger;

    iput-object p5, p0, Lio/sentry/android/core/internal/util/ScreenshotMasking$$ExternalSyntheticLambda0;->f$4:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/internal/util/ScreenshotMasking$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/sentry/android/core/internal/util/ScreenshotMasking$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lio/sentry/android/core/internal/util/ScreenshotMasking$$ExternalSyntheticLambda0;->f$2:Lio/sentry/android/core/SentryScreenshotOptions;

    iget-object v3, p0, Lio/sentry/android/core/internal/util/ScreenshotMasking$$ExternalSyntheticLambda0;->f$3:Lio/sentry/ILogger;

    iget-object v4, p0, Lio/sentry/android/core/internal/util/ScreenshotMasking$$ExternalSyntheticLambda0;->f$4:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, v3, v4}, Lio/sentry/android/core/internal/util/ScreenshotMasking;->lambda$captureViewHierarchy$0(Ljava/util/concurrent/atomic/AtomicReference;Landroid/app/Activity;Lio/sentry/android/core/SentryScreenshotOptions;Lio/sentry/ILogger;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
