.class public final synthetic Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/android/core/SentryFeedbackScreenshotPicker$OnScreenshotPicked;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/SentryUserFeedbackForm;

.field public final synthetic f$1:Lio/sentry/SentryOptions;

.field public final synthetic f$2:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/SentryUserFeedbackForm;Lio/sentry/SentryOptions;Landroid/widget/Button;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda5;->f$0:Lio/sentry/android/core/SentryUserFeedbackForm;

    iput-object p2, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda5;->f$1:Lio/sentry/SentryOptions;

    iput-object p3, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda5;->f$2:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onScreenshotPicked(Landroid/net/Uri;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda5;->f$0:Lio/sentry/android/core/SentryUserFeedbackForm;

    iget-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda5;->f$1:Lio/sentry/SentryOptions;

    iget-object v2, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda5;->f$2:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, p1}, Lio/sentry/android/core/SentryUserFeedbackForm;->lambda$maybeRegisterScreenshotPicker$6$io-sentry-android-core-SentryUserFeedbackForm(Lio/sentry/SentryOptions;Landroid/widget/Button;Landroid/net/Uri;)V

    return-void
.end method
