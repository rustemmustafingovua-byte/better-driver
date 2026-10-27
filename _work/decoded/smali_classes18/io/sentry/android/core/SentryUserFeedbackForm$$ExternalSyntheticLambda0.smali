.class public final synthetic Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/android/core/SentryShakeDetector$Listener;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/SentryUserFeedbackForm;

.field public final synthetic f$1:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/SentryUserFeedbackForm;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/SentryUserFeedbackForm;

    iput-object p2, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda0;->f$1:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onShake()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/SentryUserFeedbackForm;

    iget-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda0;->f$1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lio/sentry/android/core/SentryUserFeedbackForm;->lambda$shakeListener$1$io-sentry-android-core-SentryUserFeedbackForm(Ljava/lang/ref/WeakReference;)V

    return-void
.end method
