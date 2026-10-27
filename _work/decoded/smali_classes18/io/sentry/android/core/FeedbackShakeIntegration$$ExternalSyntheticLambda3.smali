.class public final synthetic Lio/sentry/android/core/FeedbackShakeIntegration$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/FeedbackShakeIntegration;

.field public final synthetic f$1:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/FeedbackShakeIntegration;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/FeedbackShakeIntegration$$ExternalSyntheticLambda3;->f$0:Lio/sentry/android/core/FeedbackShakeIntegration;

    iput-object p2, p0, Lio/sentry/android/core/FeedbackShakeIntegration$$ExternalSyntheticLambda3;->f$1:Lio/sentry/android/core/SentryAndroidOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration$$ExternalSyntheticLambda3;->f$0:Lio/sentry/android/core/FeedbackShakeIntegration;

    iget-object v1, p0, Lio/sentry/android/core/FeedbackShakeIntegration$$ExternalSyntheticLambda3;->f$1:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0, v1}, Lio/sentry/android/core/FeedbackShakeIntegration;->lambda$enableOnShake$0$io-sentry-android-core-FeedbackShakeIntegration(Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method
