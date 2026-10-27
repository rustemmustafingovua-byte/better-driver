.class public final synthetic Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/SentryUserFeedbackForm;

.field public final synthetic f$1:Landroid/widget/Button;

.field public final synthetic f$2:Lio/sentry/SentryFeedbackOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/SentryUserFeedbackForm;Landroid/widget/Button;Lio/sentry/SentryFeedbackOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/core/SentryUserFeedbackForm;

    iput-object p2, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda1;->f$1:Landroid/widget/Button;

    iput-object p3, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda1;->f$2:Lio/sentry/SentryFeedbackOptions;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/core/SentryUserFeedbackForm;

    iget-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda1;->f$1:Landroid/widget/Button;

    iget-object v2, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda1;->f$2:Lio/sentry/SentryFeedbackOptions;

    invoke-virtual {v0, v1, v2, p1}, Lio/sentry/android/core/SentryUserFeedbackForm;->lambda$onCreate$2$io-sentry-android-core-SentryUserFeedbackForm(Landroid/widget/Button;Lio/sentry/SentryFeedbackOptions;Landroid/view/View;)V

    return-void
.end method
