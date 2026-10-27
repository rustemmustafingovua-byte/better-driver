.class public final synthetic Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/SentryUserFeedbackForm;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Lio/sentry/SentryOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/SentryUserFeedbackForm;Ljava/lang/Runnable;Lio/sentry/SentryOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda7;->f$0:Lio/sentry/android/core/SentryUserFeedbackForm;

    iput-object p2, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda7;->f$2:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda7;->f$0:Lio/sentry/android/core/SentryUserFeedbackForm;

    iget-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda7;->f$2:Lio/sentry/SentryOptions;

    invoke-virtual {v0, v1, v2, p1}, Lio/sentry/android/core/SentryUserFeedbackForm;->lambda$setOnDismissListener$5$io-sentry-android-core-SentryUserFeedbackForm(Ljava/lang/Runnable;Lio/sentry/SentryOptions;Landroid/content/DialogInterface;)V

    return-void
.end method
